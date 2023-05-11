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
            prompts = ["Yes","Features and Benefits Page","Creator Dashboard"]
        );
        chat_state_2 = spawn node::chat_state(
            title = "Features and Benefits Page",
            message = "Welcome to Apexmite! Are you ready to learn more about Apexmite Content Federation's 50/50 profit sharing?",
            prompts = ["Yes","Apexmite Content Federation Landing Page"]
        );

        // Connecting the nodes together
        server ++> models;
        models ++> chat_state;
        chat_state ++> chat_state_1;
        chat_state ++> chat_state_2;

        /// @notice This is for new sign-ups to payment page.
        chat_state_1 +[intent_transition(intent="Yes")]+> node_landing_page;
        /// @dev Please make this only accessable by auth-users from Apexmite Content Federation Landing Page.
        chat_state_1 +[intent_transition(intent="Creator Dashboard")]+> node_creator_dashboard;

        chat_state_2 +[intent_transition(intent="Welcome Page")]+> chat_state_1;
        chat_state_2 +[intent_transition(intent="Yes")]+> node_creator_dashboard;
    }
}
