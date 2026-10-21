---
title: "Long Form Q&A with Haystack"
description: "Tuning a Haystack question-answering pipeline for long-form answers."
permalink: /journal/haystack-long-form-qa/
---
Haystack is an open-source NLP framework that leverages pre-trained Transformer models to enable developers to quickly implement production-ready semantic search, question answering, summarization, and document ranking for a wide range of NLP applications. Haystack is highly customizable and can be optimized to improve its performance. In this post, we will explore some of the key parameters that can be adjusted to speed up a Haystack QA pipeline without sacrificing the quality of its results.

The Haystack pipeline has four stages: preprocessing, document store, retriever, and reader. Let’s first understand what these four stages are, and then we can discuss the relevant parts in detail.

1. Preprocessing: In this stage, we read our document collection and convert it to a list of dictionaries. Additionally, we may use the PreProcessor class to modify our data.

2. Document Store: We pick the database that best fits our use case, and feed our preprocessed documents to the database via a document store object.

3. Retriever: In this stage, we index our database by means of the retriever, making our documents searchable. We can choose between “sparse” and “dense” retrieval methods, which differ in their indexing speed and the use of transformer-based language models.

4. Reader: In the final stage, we pick a model to perform question answering on the documents preselected by the retriever. The reader and retriever are often chained together by a pipeline, allowing the user to ask a question with a single command that triggers actions from both the reader and the retriever.


## Optimization Parameters

In the Haystack question-answering pipeline, the preprocessing and retrieval stages offer the most opportunities for optimization.

To improve the performance of the pipeline, the length of the documents can be adjusted during the preprocessing stage. To adjust the length of your documents, you can use the PreProcessor class to segment your documents into passages of the optimal length. The split_by and split_length parameters allow you to specify the unit and number of words contained in a document, respectively. Additionally, the split_respect_sentence_boundary parameter ensures that documents are split only at sentence boundaries, and the split_overlap parameter allows you to include a few words of overlap between documents to avoid losing the syntactic context of a sentence.

Another important parameter is top_k_retriever, which determines how many documents are indexed and searched by the retriever. A higher value for top_k_retriever will result in better performance, but it will also require more computing power. It’s important to find the right balance between performance and computing power for your specific use case. Overall, it is possible to improve Haystack’s performance by carefully adjusting these parameters.

## Sparse and Dense Retrieval Methods

Another important aspect in terms of optimization choices is related to the methods of indexing and searching through the document store. In the context of the Haystack question answering pipeline, “sparse” and “dense” methods refer to different approaches to indexing and searching documents.

Sparse methods are typically faster at indexing than dense methods, but they may not be as effective at selecting relevant documents. In general, sparse methods rely on simple keyword-based search algorithms, while dense methods use transformer-based language models to better understand the content of the documents and select the most relevant ones.

In terms of implementation, sparse methods may use techniques such as TF-IDF (term frequency-inverse document frequency) to index documents and rank them based on their relevance to the query. Dense methods, on the other hand, may use encoders to convert documents into a fixed-length vector representation, which is then used to compare documents and select the most relevant ones.

Overall, the choice between sparse and dense methods depends on the specific use case and the trade-off between indexing speed and retrieval accuracy. It’s important to carefully consider the pros and cons of each method and choose the one that best fits the needs of your application.

## Results

I recently had the opportunity to test out Haystack and was pleasantly surprised by its capabilities. I started by using the roberta-base-squad2 model, which provided decent answers that included some context but were on the short side and I needed long-form answers. However, when I switched to the Seq2SeqGenerator function with the bart_lfqa model, the answers really started to shine. The model was able to generate longer, more detailed responses that provided a lot of useful information.

For example, when I asked which VPN was the best, the model generated a response that mentioned some of the top VPNs and provided some context about why they were considered the best. However, when I asked about the best office chair, the answer wasn’t quite as on point. To improve the answers, I added a document from Wirecutter about the best chairs, and the results improved. The model was able to mention some of the best-known chairs and provide more information about why they were considered the best. Therefore, I scraped some blogs and articles from Wirecutter and added them to the datastore. This improved the answers for most questions, but it also increased the time it took to generate an answer. The increase in time was understandable given the larger size of the datastore.

In terms of optimization, I tried a few different approaches to improve the speed and accuracy of Haystack’s answers. I reduced the top_k_retriever parameter from 10 to 5, which only made a very small difference in the time it took to generate an answer. I also tried using the PreProcessor function with different parameters, which helped reduce the time it took to generate an answer. For instance, using the PreProcessor with the split_by=”word”, split_length=100, and split_respect_sentence_boundary=True parameters reduced the time it took to generate an answer by 20-25% in general.

I also experimented with different retrieval and generation models. For example, I tried using the DensePassageRetriever with Facebook’s DPR embeddings and the RAGenerator with Facebook’s rag-token-nq model. This yielded better and more accurate answers for knowledge-intensive NLP questions, but it also doubled the time it took to generate an answer. The answers are short and that can be extended by setting the parameter min_length. Also, it is important to note dense method requires shorter document sizes, and 100 words are recommended. The top_k_retriever parameter also has a significant impact when using the DPR method, increasing the speed by almost 30% in my case when reduced from 10 to 5.

I will continue to play with this framework and I am going to fine-tune a specific model for this purpose using https://huggingface.co/datasets/vblagoje/lfqa dataset and wirecutter blog posts. Overall, I am quite impressed with Haystack and would recommend it to other NLP and ML engineers looking for a fast and accurate QA system. Give it a try and see for yourself.
