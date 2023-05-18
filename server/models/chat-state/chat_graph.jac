// Defining the nodes
node server;
node models;
node chat_state {
    has title;
    has message;
    has prompts;
}

edge intent_transition {
    has intent;
}

// Static chat state graph

graph chat_state {
    has anchor server;
    spawn {
        server = spawn node::server;
        models = spawn node::models;
        chat_state = spawn node::chat_state;
        /// @notice This is the chat state used for the landing page, or returning auth-users.
        chat_state_1 = spawn node::chat_state(
            title = "Apexmite Content Federation Landing Page",
            message = "Welcome to Apexmite! Are you ready to learn more about reporting true unexplained sighting of UFO's, Bigfoot, etc. with Apexmite Content Federation?",
            prompts = [
                "Yes",
                "Apexmite Features and Benefits Page",
                "Apexmite Micro-Services Page",
                "Apexmite Creator Dashboard",
                "Apexmite Ad Network Monetization Dashboard",
                "Apexmite Pro AI Content Assistant Subscription Page",
                "Apexmite Pro AI Content Assistant Subscription Pricing Page"
                ]
        );
        chat_state_2 = spawn node::chat_state(
            title = "Apexmite Features and Benefits Page",
            message = "Welcome to Apexmite! Are you ready to learn more about Apexmite Content Federation's 50/50 profit sharing?",
            prompts = [
                "Yes",
                "Apexmite Content Federation Landing Page",
                "Apexmite Micro-Services Page",
                "Apexmite Creator Dashboard", 
                "Apexmite Ad Network Monetization Dashboard",
                "Apexmite Pro AI Content Assistant Subscription Page",
                "Apexmite Pro AI Content Assistant Subscription Pricing Page"
                ]
        );
        chat_state_3 = spawn node::chat_state(
            title = "Apexmite Micro-Services Page",
            message = "Welcome to Apexmite! Are you ready to learn more about the micro-services Apexmite has to offer?",
            prompts = [
                "Yes",
                "Apexmite Content Federation Landing Page",
                "Apexmite Features and Benefits Page",
                "Apexmite Creator Dashboard",
                "Apexmite Ad Network Monetization Dashboard",
                "Apexmite Pro AI Content Assistant Subscription Page",
                "Apexmite Pro AI Content Assistant Subscription Pricing Page"
                ]
        );
        chat_state_4 = spawn node::chat_state(
            title = "Apexmite Creator Dashboard",
            message = "Welcome to Apexmite! Are you ready to learn more about using the Apexmite Creator Dashboard?",
            prompts = [
                "Yes",
                "Apexmite Content Federation Landing Page",
                "Apexmite Features and Benefits Page",
                "Apexmite Micro-Services Page",
                "Apexmite Ad Network Monetization Dashboard",
                "Apexmite Pro AI Content Assistant Subscription Page",
                "Apexmite Pro AI Content Assistant Subscription Pricing Page"
                ]
        );
        chat_state_5 = spawn node::chat_state(
            title = "Apexmite Ad Network Monetization Dashboard",
            message = "Welcome to Apexmite! Are you ready to learn more about using the Apexmite Ad Network Monetization Dashboard?",
            prompts = [
                "Yes",
                "Apexmite Content Federation Landing Page",
                "Apexmite Features and Benefits Page",
                "Apexmite Micro-Services Page",
                "Apexmite Creator Dashboard",
                "Apexmite Pro AI Content Assistant Subscription Page",
                "Apexmite Pro AI Content Assistant Subscription Pricing Page"
                ]
        );
        chat_state_6 = spawn node::chat_state(
            title = "Apexmite Pro AI Content Assistant Subscription Page",
            message = "Welcome to Apexmite! Are you ready to learn more about the Apexmite Pro AI Content Assistant Subscription?",
            prompts = [
                "Yes",
                "Apexmite Content Federation Landing Page",
                "Apexmite Features and Benefits Page",
                "Apexmite Micro-Services Page",
                "Apexmite Creator Dashboard",
                "Apexmite Ad Network Monetization Dashboard",
                "Apexmite Pro AI Content Assistant Subscription Pricing Page"
                ]
        );
        chat_state_7 = spawn node::chat_state(
            title = "Apexmite Pro AI Content Assistant Subscription Pricing Page",
            message = "Welcome to Apexmite! Are you ready to learn more about Apexmite Pro AI Content Assistant Subscription pricing?",
            prompts = [
                "Yes",
                "Apexmite Content Federation Landing Page",
                "Apexmite Features and Benefits Page",
                "Apexmite Micro-Services Page",
                "Apexmite Creator Dashboard",
                "Apexmite Ad Network Monetization Dashboard",
                "Apexmite Pro AI Content Assistant Subscription Page"
                ]
        );

        // Connecting the nodes together
        server ++> models;
        models ++> chat_state;
        chat_state ++> chat_state_1;
        chat_state ++> chat_state_2;
        chat_state ++> chat_state_3;
        chat_state ++> chat_state_4;
        chat_state ++> chat_state_5;
        chat_state ++> chat_state_6;
        chat_state ++> chat_state_7;

        /// @notice This is for new sign-ups to payment page.
        chat_state_1 +[intent_transition(intent="Yes")]+> node_landing_page;
        chat_state_1 +[intent_transition(intent="Apexmite Features and Benefits Page")]+> chat_state_2;
        chat_state_1 +[intent_transition(intent="Apexmite Micro-Services Page")]+> chat_state_3;
        /// @dev Please make this only accessable by auth-users from Apexmite Content Federation Landing Page.
        chat_state_1 +[intent_transition(intent="Apexmite Creator Dashboard")]+> chat_state_4;
        chat_state_1 +[intent_transition(intent="Apexmite Ad Network Monetization Dashboard")]+> chat_state_5;
        chat_state_1 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Page")]+> chat_state_6;
        chat_state_1 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Pricing Page")]+> chat_state_7;

        chat_state_2 +[intent_transition(intent="Yes")]+> node_features_benefits;
        chat_state_2 +[intent_transition(intent="Apexmite Content Federation Landing Page")]+> chat_state_1;
        chat_state_2 +[intent_transition(intent="Apexmite Micro-Services Page")]+> chat_state_3;
        chat_state_2 +[intent_transition(intent="Apexmite Creator Dashboard")]+> chat_state_4;
        chat_state_2 +[intent_transition(intent="Apexmite Ad Network Monetization Dashboard")]+> chat_state_5;
        chat_state_2 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Page")]+> chat_state_6;
        chat_state_2 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Pricing Page")]+> chat_state_7;

        chat_state_3 +[intent_transition(intent="Yes")]+> node_micro_services;
        chat_state_3 +[intent_transition(intent="Apexmite Content Federation Landing Page")]+> chat_state_1;
        chat_state_3 +[intent_transition(intent="Apexmite Features and Benefits Page")]+> chat_state_2;
        chat_state_3 +[intent_transition(intent="Apexmite Creator Dashboard")]+> chat_state_4;
        chat_state_3 +[intent_transition(intent="Apexmite Ad Network Monetization Dashboard")]+> chat_state_5;
        chat_state_3 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Page")]+> chat_state_6;
        chat_state_3 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Pricing Page")]+> chat_state_7;

        chat_state_4 +[intent_transition(intent="Yes")]+> node_creator_dashboard;
        chat_state_4 +[intent_transition(intent="Apexmite Content Federation Landing Page")]+> chat_state_1;
        chat_state_4 +[intent_transition(intent="Apexmite Features and Benefits Page")]+> chat_state_2;
        chat_state_4 +[intent_transition(intent="Apexmite Micro-Services Page")]+> chat_state_3;
        chat_state_4 +[intent_transition(intent="Apexmite Ad Network Monetization Dashboard")]+> chat_state_5;
        chat_state_4 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Page")]+> chat_state_6;
        chat_state_4 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Pricing Page")]+> chat_state_7;

        chat_state_5 +[intent_transition(intent="Yes")]+> node_ad_network_dashboard;
        chat_state_5 +[intent_transition(intent="Apexmite Content Federation Landing Page")]+> chat_state_1;
        chat_state_5 +[intent_transition(intent="Apexmite Features and Benefits Page")]+> chat_state_2;
        chat_state_5 +[intent_transition(intent="Apexmite Micro-Services Page")]+> chat_state_3;
        chat_state_5 +[intent_transition(intent="Apexmite Creator Dashboard")]+> chat_state_4;
        chat_state_5 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Page")]+> chat_state_6;
        chat_state_5 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Pricing Page")]+> chat_state_7;

        chat_state_6 +[intent_transition(intent="Yes")]+> node_subscription_page;
        chat_state_6 +[intent_transition(intent="Apexmite Content Federation Landing Page")]+> chat_state_1;
        chat_state_6 +[intent_transition(intent="Apexmite Features and Benefits Page")]+> chat_state_2;
        chat_state_6 +[intent_transition(intent="Apexmite Micro-Services Page")]+> chat_state_3;
        chat_state_6 +[intent_transition(intent="Apexmite Creator Dashboard")]+> chat_state_4;
        chat_state_6 +[intent_transition(intent="Apexmite Ad Network Monetization Dashboard")]+> chat_state_5;
        chat_state_6 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Pricing Page")]+> chat_state_7;

        chat_state_7 +[intent_transition(intent="Yes")]+> node_subscription_pricing_page;
        chat_state_7 +[intent_transition(intent="Apexmite Content Federation Landing Page")]+> chat_state_1;
        chat_state_7 +[intent_transition(intent="Apexmite Features and Benefits Page")]+> chat_state_2;
        chat_state_7 +[intent_transition(intent="Apexmite Micro-Services Page")]+> chat_state_3;
        chat_state_7 +[intent_transition(intent="Apexmite Creator Dashboard")]+> chat_state_4;
        chat_state_7 +[intent_transition(intent="Apexmite Ad Network Monetization Dashboard")]+> chat_state_5;
        chat_state_7 +[intent_transition(intent="Apexmite Pro AI Content Assistant Subscription Page")]+> chat_state_6;
    }
}
