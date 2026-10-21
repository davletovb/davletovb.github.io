---
title: "Intellibot: A Comprehensive Guide to Building a Multifaceted AI Chatbot with LangChain"
description: "Building IntelliBot, a multi-purpose AI chatbot, with LangChain."
permalink: /journal/intellibot/
---
In the realm of AI, chatbots have become an integral part of our digital experience. They assist us, answer our questions, and even perform tasks by connecting to various APIs. Today, I am going to share my journey of creating one such chatbot, Intellibot, which I built using Python, LangChain, and hosted on GitHub.

## The Problem
The challenge was to create a chatbot that could not only respond to user queries but also summarize documents and perform tasks by connecting to various APIs. This required a robust architecture that could handle different types of requests and integrate with different platforms like Telegram and WhatsApp. Initially, I started building this bot directly connecting to the OpenAI API, GPT-3.5. But after a few tools and functionalities by prompt engineering, it started to become difficult to keep updated.

## The Solution: Intellibot with LangChain
Intellibot is a chatbot that uses AI to assist, answer questions, summarize documents, and connect to various APIs to do tasks. The bot is designed to be platform-agnostic, meaning it can be integrated with any chat platform like Telegram, WhatsApp, etc. To make the maintenance easier and add more tools over time, I decided to use the LangChain framework.

LangChain is a powerful tool that can be used to work with Large Language Models (LLMs). It offers a useful approach where the corpus of text is preprocessed by breaking it down into chunks or summaries, embedding them in a vector space, and searching for similar chunks when a question is asked. This pattern of preprocessing, real-time collecting, and interaction with the LLM is common and can be used in other scenarios as well, such as code and semantic search. LangChain provides an abstraction that simplifies the process of composing these pieces.

## Technical Overview
Intellibot is built using the FastAPI framework for Python, which is a high-performance, easy-to-use framework for building APIs. Chroma vector database for storing text embeddings locally. Langchain also allows building AI agents that can choose specific tools among available tools to perform and finalize complex queries and tasks.

## Technical Challenges and Solutions
Initially, I started building the bot directly with OpenAI's API. Designed a prompt that returned the name of the function (current function support wasn't available at the time). It worked, but, eventually, as I kept adding new functions and features it has become a burden to manage and update the system. So I decided to try the Langchain framework.

## The Role of LangChain
LangChain played a crucial role in the development of Intellibot. It allowed me to implement the same tools and more with a few lines of code. Despite being a relatively new tool, the fast-growing community and the pace of development made it a good choice. The seamless integration with the Chroma vector database and other databases is also very helpful. It made a lot of my work easy while building this chatbot with long-term conversation history.

## Conclusion
Building Intellibot was a challenging but rewarding experience. It taught me a lot about building robust and scalable chatbots, and I hope it can serve as a useful resource for others looking to build their own chatbots. Intellibot is open-source and available on GitHub, so feel free to check it out and contribute!

To access the code: [github](https://github.com/davletovb/intellibot)
