walker ask {
    has question;
    can bi_enc.infer;
    root {
        question = std.input("User question > ");
        take --> node::server;
    }
    server {
        intent_labels = -[intent_transition]->.edge.intent;
        predicted_intent = bi_enc.infer(
            contexts = [question],
            candidates = intent_labels,
            context_type = "text",
            candidate_type = "text"
        )[0]["predicted"]["label"];
        take -[intent_transition(intent==predicted_intent)]-> node::faq_state;
    }
    faq_state {
        std.out(here.response);
    }
}
