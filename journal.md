[Home](https://behruz.me/) >> Journal
------------------------------------

## Building a Serverless Machine Learning Service to Predict Air Quality Index
February 24, 2023

In this project, I built a Machine Learning service that can predict the Air Quality Index (AQI) in a specific Canadian city in the next few days using a 100% serverless stack. Here’s a summary of the steps I took to accomplish this:

1. I created a feature generation script that first fetches raw weather and pollutant data from an external API [https://aqicn.org](https://aqicn.org). Then, I computed features from this raw data (model inputs) and targets (model outputs) and stored them in the cloud.

2. To ensure I had enough historical data (from [https://www.weatherbit.io](https://www.weatherbit.io) API) to train a Machine Learning model, I ran the feature script for a range of past dates.

3. Then fetched historical (features, targets) data, trained and evaluated the best ML model possible for this data (e.g. ARIMA, Exponential Smoothing), and stored the trained model.

4. Set up a GitHub action to automatically run the feature generation script every day, using GitHub’s serverless computing power which is free.

5. Used Streamlit, a Python library, to create a web app that loads the model and features from the Feature Store, computes model predictions, and shows them on a beautiful UI.

In summary, I built a Machine Learning service that predicts the Air Quality Index in a specific city in the next selected days, using a serverless stack. By automating the feature generation and model training script, the model will be updated regularly for better prediction results.

To access the code: [github](https://github.com/davletovb/clearsky)

To see the web app: [dashboard](https://clearsky.streamlit.app/)


## Long Form Q&A with Haystack
December 13, 2022

Haystack is an open-source NLP framework that leverages pre-trained Transformer models to enable developers to quickly implement production-ready semantic search, question answering, summarization, and document ranking for a wide range of NLP applications. Haystack is highly customizable and can be optimized to improve its performance. In this post, we will explore some of the key parameters that can be adjusted to speed up a Haystack QA pipeline without sacrificing the quality of its results.

The Haystack pipeline has four stages: preprocessing, document store, retriever, and reader. Let’s first understand what these four stages are, and then we can discuss the relevant parts in detail.

1. Preprocessing: In this stage, we read in our document collection and convert it to a list of dictionaries. Additionally, we may use the PreProcessor class to modify our data.

2. Document Store: We pick the database that best fits our use case, and feed our preprocessed documents to the database via a document store object.

3. Retriever: In this stage, we index our database by means of the retriever, making our documents searchable. We can choose between “sparse” and “dense” retrieval methods, which differ in their indexing speed and the use of transformer-based language models.

4. Reader: In the final stage, we pick a model to perform question answering on the documents preselected by the retriever. The reader and retriever are often chained together by a pipeline, allowing the user to ask a question with a single command that triggers actions from both the reader and retriever.


### Optimization Parameters

In the Haystack question answering pipeline, the preprocessing and retrieval stages offer the most opportunities for optimization.

To improve the performance of the pipeline, the length of the documents can be adjusted during preprocessing stage. To adjust the length of your documents, you can use the PreProcessor class to segment your documents into passages of the optimal length. The split_by and split_length parameters allow you to specify the unit and number of words contained in a document, respectively. Additionally, the split_respect_sentence_boundary parameter ensures that documents are split only at sentence boundaries, and the split_overlap parameter allows you to include a few words of overlap between documents to avoid losing the syntactic context of a sentence.

Another important parameter is top_k_retriever, which determines how many documents are indexed and searched by the retriever. A higher value for top_k_retriever will result in better performance, but it will also require more computing power. It’s important to find the right balance between performance and computing power for your specific use case. Overall, it is possible to improve Haystack’s performance by carefully adjusting these parameters.

### Sparse and Dense Retrieval Methods

Another important aspect in terms of optimization choices is related with the methods of indexing and searching through the document store. In the context of the Haystack question answering pipeline, “sparse” and “dense” methods refer to different approaches to indexing and searching documents.

Sparse methods are typically faster at indexing than dense methods, but they may not be as effective at selecting relevant documents. In general, sparse methods rely on simple keyword-based search algorithms, while dense methods use transformer-based language models to better understand the content of the documents and select the most relevant ones.

In terms of implementation, sparse methods may use techniques such as TF-IDF (term frequency-inverse document frequency) to index documents and rank them based on their relevance to the query. Dense methods, on the other hand, may use encoders to convert documents into a fixed-length vector representation, which is then used to compare documents and select the most relevant ones.

Overall, the choice between sparse and dense methods depends on the specific use case and the trade-off between indexing speed and retrieval accuracy. It’s important to carefully consider the pros and cons of each method and choose the one that best fits the needs of your application.

### Results

I recently had the opportunity to test out Haystack and was pleasantly surprised by its capabilities. I started by using the roberta-base-squad2 model, which provided decent answers that included some context, but were on the short side and I needed long form answers. However, when I switched to the Seq2SeqGenerator function with the bart_lfqa model, the answers really started to shine. The model was able to generate longer, more detailed responses that provided a lot of useful information.

For example, when I asked which VPN was the best, the model generated a response that mentioned some of the top VPNs and provided some context about why they were considered the best. However, when I asked about the best office chair, the answer wasn’t quite as on point. To improve the answers, I added a document from the Wirecutter about the best chairs and the results improved. The model was able to mention some of the best known chairs and provide more information about why they were considered the best. Therefore, I scraped some blogs and articles from the Wirecutter and added them to the datastore. This improved the answers for most questions, but it also increased the time it took to generate an answer. The increase in time was understandable given the larger size of the datastore.

In terms of optimization, I tried a few different approaches to improve the speed and accuracy of Haystack’s answers. I reduced the top_k_retriever parameter from 10 to 5, which only made a very small difference in the time it took to generate an answer. I also tried using the PreProcessor function with different parameters, which helped reduce the time it took to generate an answer. For instance, using the PreProcessor with the split_by=”word”, split_length=100, and split_respect_sentence_boundary=True parameters reduced the time it took to generate an answer by 20-25% in general.

I also experimented with different retrieval and generation models. For example, I tried using the DensePassageRetriever with Facebook’s DPR embeddings and the RAGenerator with Facebook’s rag-token-nq model. This yielded better and more accurate answers for knowledge-intensive NLP questions, but it also doubled the time it took to generate an answer. The answers are short and that can be extended by setting the parameter min_length. Also, an important to note dense method requires shorter document sizes recommended 100 words. The top_k_retriever parameter also has a much significant impact when used DPR method, increasing the speed by almost 30% in my case when reduced from 10 to 5.

I will continue to play with this framework and I am going to fine-tune a specific model for this purpose using https://huggingface.co/datasets/vblagoje/lfqa dataset and wirecutter blog posts. Overall, I am quite impressed with Haystack and would recommend it to other NLP and ML engineers looking for a fast and accurate QA system. Give it a try and see for yourself.
