# Apexmite Content Federation - Powered by [Jaseci](https://github.com/Jaseci-Labs/jaseci) and Jac - 🚧 Work In Progress 🏗

<p align="left"> 
<img src="https://komarev.com/ghpvc/?username=apexmite-jac&label=Profile%20views&color=f79952&style=flat" alt="apexmite-jac" /> 
<img alt="Stars" src="https://img.shields.io/github/stars/WrappedUsername/apexmite-jac?style=flat-square&labelColor=343b41"/>
</p>

The structure of the app will be in the form of a graph.

- Creating markdown mermaid diagrams as pseudocode:

```mermaid
graph TD;
    root-->node_landing_page
    node_landing_page-->node_success_page
    node_landing_page<-->node_anon_guest_access
    node_success_page-->node_conversion_page
    node_conversion_page-->node_creator_dashboard
    node_conversion_page-->node_premium_content_membership
    node_premium_content_membership-->node_premium_content_federation
    node_creator_dashboard-->node_content_federation
    node_creator_dashboard-->node_premium_content_federation
    node_anon_guest_access<-->node_content_federation
```

```mermaid
 
---
title: sign-up example
---
erDiagram
    ANON-GUEST-ACCESS ||--o{ SIGN-UP : clicks-cta-button
    SIGN-UP ||--|{ PREMIUM-CONTENT-FEDERATION : contains
    AUTHORIZED-USER }|..|{ CREATOR-DASHBOARD : uses
    PREMIUM-CONTENT-MEMBERSHIP }|..|{ PREMIUM-CONTENT-FEDERATION : enjoys
    ANON-GUEST-ACCESS }|..|{ CONTENT-FEDERATION : basic-access
```

## Building main.jac file

- Converting the pseudocode into Jac programming language:

```jac
# import the graph and walker.
import {*} with "./graph.jac";
import {*} with "./walker.jac";

# this walker is reponsible for starting the program.
walker init {

    root {
        /// @notice creates the landing page
        spawn here ++> node::landing_page

        #creates an instant of the graph
        spawn here ++> graph::main_graph;

        #creates an instance of the walker, talker
        spawn  --> walker::talker;
    }
}
```

## Building walker.jac file

- Converting the pseudocode into Jac programming language:

```Jac
node landing_page;
node success_page;
node conversion_page

edge anon_guest
edge authorized_user
edge user_id
edge lp_hero_section
edge lp_cta_button_clicked
edge sp_hero_section
edge sp_cta_button_clicked
edge cp_hero_section
edge cp_cta_button_clicked

walker create_app {
    
}
```
