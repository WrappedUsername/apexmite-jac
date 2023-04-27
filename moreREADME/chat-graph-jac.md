# Building chat_gr.jac file

```mermaid
graph TD;
    node_root-->node_server
    node_server-->node_models
    node_models-->node_biencoder_model
    node_models-->node_entity_extraction
    node_models-->node_embedding_cache
    node_models-->node_chat_state
    node_chat_state-->node_chat_state_1
    node_chat_state-->node_chat_state_2
    node_chat_state-->node_chat_state_3
    node_models-->node_faq_state
    node_faq_state-->node_faq_state_1
    node_faq_state-->node_faq_state_2
    node_faq_state-->node_faq_state_3
    node_faq_state-->node_faq_state_4
    node_faq_state-->node_faq_state_5
    node_faq_state-->node_faq_state_6
```

- Converting the pseudocode into Jac programming language:

```jac
// Defining the nodes
node models;
node chat_state {
    has title;
    has message;
    has prompts;
}

edge transition {
    has intent;
}

// Static graph definition
graph chat {
    has anchor models;
    spawn {
        models = spawn node::models;
        chat_state_1 = spawn node::chat_state(
            title = "Welcome",
            message = "Welcome to Jaseci Dojo, how can i help?",
            prompts = ["class","times","prices","quit"]
        );
    }
}
```
