# Apexmite Content Federation - Powered by [Jaseci](https://github.com/Jaseci-Labs/jaseci) and Jac - 🚧 Work In Progress 🏗

<p align="left"> 
<img src="https://komarev.com/ghpvc/?username=apexmite-jac&label=Profile%20views&color=f79952&style=flat" alt="apexmite-jac" /> 
<img alt="Stars" src="https://img.shields.io/github/stars/WrappedUsername/apexmite-jac?style=flat-square&labelColor=343b41"/>
</p>

The structure of the app will be in the form of a graph.

## Possible activation functions for the DNN

- The rectified linear unit (ReLU) activation function can be used for faster model training. However, a linear activation function has two major problems :

It’s not possible to use backpropagation as the derivative of the function is a constant and has no relation to the input x.
All layers of the neural network will collapse into one if a linear activation function is used. No matter the number of layers in the neural network, the last layer will still be a linear function of the first layer. So, essentially, a linear activation function turns the neural network into just one layer.

- The Tanh activation function for sentiment analysis.
- The DNN will also use Sigmoid activation function for probability distributions.

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

## Continued in moreREADME folder
