// Defining the nodes
node server;
node models;
node faq_state {
    has question;
    has answer;
}

// Static graph definition
graph faq {
    has anchor server;
    spawn {
        server = spawn node::server;
        models = spawn node::models;
        faq_state = spawn node::faq_state;
        faq_state_1 = spawn node::faq_state(
            question="What is Apexmite Content Federation?",
            answer="Apexmite Content Federation Landing Page"
        );
        faq_state_2 = spawn node::faq_state(
            question="What are the features and benefits of Apexmite Content Federation?",
            answer="Features and Benefits of Apexmite Content Federation Page"
        );
        faq_state_3 = spawn node::faq_state(
            question="What is the Premium Content Membership?",
            answer="Premium Content Membership Page"
        );
        faq_state_4 = spawn node::faq_state(
            question="What Is the Pro AI Content Assistant Subscription?",
            answer="Pro AI Content Assistant Subscription Page"
        );
        faq_state_5 = spawn node::faq_state(
            question="How much does the Premium Content Membership cost?",
            answer="Premium Content Membership Pricing Page"
        );
        faq_state_6 = spawn node::faq_state(
            question="How much does the Pro AI Content Assistant Subscription cost?",
            answer="Pro AI Content Assistant Subscription Pricing Page"
        );
        faq_state_7 = spawn node::faq_state(
            question="How do I quit FAQ?",
            answer="Quit FAQ Button"
        );

        // Connecting the nodes together
        server ++> models;
        models ++> faq_state;
        faq_state ++> faq_state_1;
        faq_state ++> faq_state_2;
        faq_state ++> faq_state_3;
        faq_state ++> faq_state_4;
        faq_state ++> faq_state_5;
        faq_state ++> faq_state_6;
        faq_state ++> faq_state_7;
    }
}

walker init {
    root {
        spawn here ++> node::models;
    }
}
