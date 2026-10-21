#!/usr/bin/env ruby
# Fast, dependency-free checks for Jekyll metadata and site-local project links.
require 'yaml'

errors = []
metadata = {}
files = ['index.md', 'journal.md', 'journal-redirect.html'] +
        Dir.glob('journal/*.md') + Dir.glob('projects/*.md')

files.each do |path|
  next unless File.file?(path)
  source = File.read(path)
  match = source.match(/\A---\r?\n(.*?)\r?\n---\r?\n/m)
  unless match
    errors << "#{path}: missing or incomplete Jekyll front matter"
    next
  end

  begin
    parsed = YAML.safe_load(match[1], aliases: false)
    unless parsed.is_a?(Hash)
      errors << "#{path}: front matter must be a YAML mapping"
      next
    end
    metadata[path] = parsed
  rescue Psych::Exception => e
    errors << "#{path}: invalid YAML: #{e.message.lines.first.strip}"
  end
end

permalinks = {}
metadata.each do |path, info|
  url = info['permalink']
  next unless url
  errors << "#{path}: duplicate permalink #{url} (also #{permalinks[url]})" if permalinks.key?(url)
  permalinks[url] = path
end

project_paths = Dir.glob('projects/*.md')
project_paths.each do |path|
  info = metadata[path]
  next unless info
  expected = "/projects/#{File.basename(path, '.md')}/"
  errors << "#{path}: expected permalink #{expected.inspect}, got #{info['permalink'].inspect}" unless info['permalink'] == expected
  errors << "#{path}: expected kind: project" unless info['kind'] == 'project'
  errors << "#{path}: missing page layout" unless info['layout'] == 'default'
end

if File.file?('index.md')
  home = File.read('index.md')
  home.scan(/href=["'](\/projects\/[^"']+)["']/).flatten.uniq.each do |url|
    errors << "index.md: link #{url} has no matching project page" unless permalinks.key?(url)
  end
end

if errors.empty?
  puts "Valid Jekyll metadata, project routes and homepage links (#{project_paths.size} project pages)."
else
  warn errors.join("\n")
  exit 1
end
