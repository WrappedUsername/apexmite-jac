// Defining the nodes
node server;
node models;
node faq_state {
    has question;
    has answer;
}

// Static faq state graph
graph faq_state {
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
            question="How does Apexmite Content Federation differ from other content distribution or sharing platforms?",
            answer="Apexmite Features and Benefits Page"
        );
        faq_state_3 = spawn node::faq_state(
            question="What are micro-services on Apexmite and how do they work?",
            answer="Apexmite Micro-Services Page"
        );
        faq_state_4 = spawn node::faq_state(
            question="How do I report an unexplained sighting of a UFO on Apexmite?",
            answer="Apexmite Creator Dashboard"
        );
        faq_state_5 = spawn node::faq_state(
            question="How do I monetize my content on Apexmite?",
            answer="Apexmite Ad Network Monetization Dashboard"
        );
        faq_state_6 = spawn node::faq_state(
            question="What kind of content can I create with the Pro AI Content Assistant?",
            answer="Apexmite Pro AI Content Assistant Subscription Page"
        );
        faq_state_7 = spawn node::faq_state(
            question="How much does the Pro AI Content Assistant Subscription cost?",
            answer="Apexmite Pro AI Content Assistant Subscription Pricing Page"
        );
        // ready to expand faq...
        // faq_state_8 = spawn node::faq_state(
        //     question="?",
        //     answer=""
        // );
        // faq_state_9 = spawn node::faq_state(
        //     question="?",
        //     answer=""
        // );
        // faq_state_10 = spawn node::faq_state(
        //     question="?",
        //     answer=""
        // );
        // faq_state_11 = spawn node::faq_state(
        //     question="?",
        //     answer=""
        // );
        // faq_state_12 = spawn node::faq_state(
        //     question="?",
        //     answer=""
        // );
        // faq_state_13 = spawn node::faq_state(
        //     question="?",
        //     answer=""
        // );
        // faq_state_14 = spawn node::faq_state(
        //     question="?",
        //     answer=""
        // );
        // faq_state_15 = spawn node::faq_state(
        //     question="?",
        //     answer=""
        // );

        // Connecting the nodes together.
        server ++> models;
        models ++> faq_state;
        faq_state ++> faq_state_1;
        faq_state ++> faq_state_2;
        faq_state ++> faq_state_3;
        faq_state ++> faq_state_4;
        faq_state ++> faq_state_5;
        faq_state ++> faq_state_6;
        faq_state ++> faq_state_7;
        // ready to expand faq...
        // faq_state ++> faq_state_8;
        // faq_state ++> faq_state_9;
        // faq_state ++> faq_state_10;
        // Some people might have a lot of questions...
        // faq_state ++> faq_state_11;
        // faq_state ++> faq_state_12;
        // faq_state ++> faq_state_13;
        // faq_state ++> faq_state_14;
        // faq_state ++> faq_state_15;
    }
}

walker init {
    root {
        spawn here ++> node::models;
    }
}
