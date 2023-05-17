# Apexmite Content Federation - Powered by [Jaseci](https://github.com/Jaseci-Labs/jaseci) and Jac - 🚧 Work In Progress 🏗

<p align="left"> 
<img src="https://komarev.com/ghpvc/?username=apexmite-jac&label=repo%20views&color=f79952&style=flat" alt="apexmite-jac" /> 
<img alt="Stars" src="https://img.shields.io/github/stars/WrappedUsername/apexmite-jac?style=flat-square&labelColor=343b41"/>
</p>

![upscaled-ufo](https://user-images.githubusercontent.com/104662990/234375939-9f396255-f339-4bf2-9e2d-984b4fd85fb7.jpeg)

Apexmite is a combination of apex and might, and it is more of a title in the realm of cryptids, because the Apexmite (or some refer to this being as the Silverking), but it is the most powerful cryptid, thus being the cryptid at it's apex of might, so I refer to this being as the Apexmite. This is what I am naming the AI Agents Apexmite will be using.

![apexmite](https://user-images.githubusercontent.com/104662990/234377462-e6961aac-8b2b-4707-af92-e2d6720c3ac2.jpeg)

## Apexmite Content Federation - Hero Section, Call to Action - Apexmite Gamified Browser Economics - Skeptics vs Encounter Witness

```yml
Apexmite will be the name of the AI Agent, and if the user chooses to enable AI voice and avatar, Apexmite will read the hero section below:
```

The Apexmite Content Federation is an AI powered Jaseci Progressive Web App (desktop, and mobile app downloads, along with website). Apexmite AI will always be there to help you navigate the Apexmite App, as a fully interactive conversational AI, for those that are anon guests, skeptics, or free tier contributors. Content creators sharing their encounters that wish to purchase Apexmite's full creative capacity with a Pro AI Content Assistant subscription will get to use Apexmite AI Agents with greater creative abilities, or other enhanced capabilties whenever they are released.

With the main growth driver for Apexmite Content Federation being a 50/50 profit share, after business operating costs have been paid, to those that share their _true_ stories of unexplained encounters, of UFO's, Bigfoot, Werewolves, etc.

<img width="250" height="250" align="left" src="https://user-images.githubusercontent.com/104662990/234374573-8fc4f050-cf32-4ba4-9733-33fb81fac7af.jpg"></img>

<img width="250" height="250" align="left" src="https://user-images.githubusercontent.com/104662990/234373448-12b122ff-5391-46f1-ac76-e60f3fbf90ef.jpg"></img>

<img width="250" height="250" align="left" src="https://user-images.githubusercontent.com/104662990/234371379-574ff1d6-4404-4bf8-a6cb-0ccb880e3467.jpg"></img>

## If you share your stories with others (I do not mind if you do, please share with others), _but_ they do not share the profits _they_ make _from your story_ this is your content, and I feel _you_ should benefit too, from this encounter of the unexplained that _you_ experienced.

So please, I encourage you to strongly consider sharing your stories of the unexplained with Apexmite Content Federation!

## Are _you_ a skeptic?

<img width="512" height="512" align="left" src="https://user-images.githubusercontent.com/104662990/234379664-8c8a6e4b-956f-4468-b3cb-620e8ebcfc78.jpeg"></img>

If _you_ think this is all _HOGWASH_, well Apexmite Content Federation encourages _you_ to debunk and _respectfully_ find and expose possible misunderstandings (you must remain respectful at all times when debunking), skeptics will have a higher burden of proof (we don't want your lazy explainations), and will only be rewarded with third party verification of your debunking claims, of hoaxes, misunderstandings, etc. This does give skeptics a chance to earn rewards if they do debunk stories respectfully with strong third party verifiable proof of your counter aurgument for why this is all hogwash.

Bring it skeptics, prove everyone wrong.

I honestly think if couch potato skeptics get outside into the forests, out there digging for real info, they are going to find some things, that may just change their mind about ufos, bigfoot, etc.

<img width="250" height="250" align="left" src="https://user-images.githubusercontent.com/104662990/234382597-58e0498a-11d3-4526-9a3c-93d541d0345c.jpeg"></img>

Get out there into the national forests and parks, and find out, those that share their stories of the unexplained are doing their best to explain something they do not fully understand, so they do not have the burden of proof here, it's _YOU SKEPTICS_ that must prove your explainations (and swamp gas ain't gonna cut it here buddy)!

- 50/50 profit share Encounter Witness, free tier
- 50/50 profit share Encounter Witness, Pro AI Content Assistant subscription - monthly or annual - maybe beta access lifetime premium memberships for a one time payment, (a reward for signing up early).
- Skeptic Verified Debunking Reward, flipped profit share, the profit share of debunked stories, will become the property of the skeptic, as their share of the rewards.

Apexmite Content Federation will provide a fiction section for stories that are not true, so please do not create hoaxes because we encourage the skeptics to find hoaxes, it's like a contest or game.

## Technical Details

The structure of the progressive web app, will be in the form of a graph.

[reference: Jaseci Bible](https://github.com/Jaseci-Labs/jaseci/raw/main/support/bible/pdf/jaseci_bible.pdf)

```yml
Jaseci Graph described as a 7-tuple (N, E, C, s, t, cN , cE ), where:
```

```mermaid
---
title: 7-tuple (N, E, C, s, t, cN , cE) Jaseci Graph
---
classDiagram
  N --> E : s = maps the source node to an edge
  N --> E : t = maps the target node to an edge
  C <-- N : cN = maps the nodes to context
  C <-- E : cE = maps the edges to context
  class N{
    +the set of nodes in graph
  }
  class E{
    +the set of edges in graph
  }
  class C{
    +the set of all contexts
  }
```

- Nodes, edges, and walkers can all have abilities.
  - Abilities cannot interact outside of the context or local variables of the attached node, edge, or walker, and does not have a return.

An example of this would be a maintainer walker saving a user's id and last conversation state for continuing the conversation at a later time.

```yml
Saving state with a maintainer walker:
```

```typescript
can cleanup with talker entry{
    if (!vistor:hoping) {
       spawn *(global.node_conv_root_state) walker::maintainer(
            user_id = visitor.user_id,
            user_context = vistor.user_context,
            dialogue_context = vistor.dialogue_context,
            last_conv_state = vistor.state_for_continuing
            /// @dev Add ERC-4337 account abstractions or any other saved states, etc here.
       );
    }
}
```

- Creating mermaid diagrams as pseudocode:

```mermaid
graph TD;
    node_root-->node_server
    node_root-->node_client
    node_client-->node_landing_page
    node_server-->node_models
    node_server-->node_auth_user_dir
    node_models-->node_bi_enc
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
    node_auth_user_dir-->node_user_data_1
    node_auth_user_dir-->node_user_data_2
    node_auth_user_dir-->node_user_data_3
    node_auth_user_dir<-->node_creator_dashboard
    node_auth_user_dir<-->node_content_federation
    node_landing_page-->node_success_page
    node_landing_page<-->node_anon_guest_access
    node_success_page-->node_conversion_page
    node_conversion_page-->node_creator_dashboard
    node_creator_dashboard-->node_content_federation
    node_anon_guest_access<-->node_content_federation
```

```mermaid
journey
    title Landing page signup
    section Landing Page
        Hero section: 3: anon_visitor
        Call to Action: 4: anon_visitor
        Clicked cta Button: 5: anon_visitor
    section Success Page
        subscription payment: 5: auth_user
        create user profile: 5: auth_user
    section Conversion Page
        Payment confirmation: 5: auth_user
        Welcome section: 5: auth_user
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

```typescript
// import the graph, kb file, and walkers.
import {*} with "./server/models/faq-state/faq_graph.jac";
import {*} with "./server/models/faq-state/ask.jac";
import {*} with "./server/models/faq-state/kb.jac";

/// @notice this walker is reponsible for starting the program.
walker init {
    root {
        server = spawn here ++> graph::faq;
        spawn here walker::ingest_faq(kb_file="main_faq.json");
        while (true){
            spawn here walker::ask;
        }
    }
}
```

- In jaseci 1.4 or later, creating an edge uses the syntax `++>` and referencing an edge uses `-->`.

## I built the faq graph from root, (isolated) as a test

[main4.pdf](https://github.com/WrappedUsername/apexmite-jac/files/11339110/main4.pdf)

![Screenshot 2023-04-26 205152](https://user-images.githubusercontent.com/104662990/234747611-7e122b57-22b3-496d-b23b-3e384cbf993a.png)

- Starting the Redis server

```bash
sudo service redis-server restart
```

- Activating `.venv`

```bash
source .venv/bin/activate
```

## The real Jac programming language syntax highlighting in VS Code

![Jac](https://user-images.githubusercontent.com/104662990/235270424-83eb1908-005c-4a99-8103-6f845d186d34.png)

- Training the bi-encoder model with the faq training data.

- Starting the Redis server

```bash
sudo service redis-server restart
```

```bash
actions load module jac_nlp.bi_enc
```

```bash
jac run bi_enc.jac -walk train -ctx '{"train_file": "chat_training_data.json"}'
```

```bash
jac run bi_enc.jac -walk infer -ctx "{\"labels\": [\"Apexmite Content Federation Landing Page\", \"Apexmite Features and Benefits Page\", \"Apexmite Micro-Services Page\", \"Apexmite Creator Dashboard\", \"Apexmite Ad Network Monetization Dashboard\", \"Apexmite Pro AI Content Assistant Subscription Page\", \"Apexmite Pro AI Content Assistant Subscription Pricing Page\"]}"
```

This project's front-end was generated with [Angular CLI](https://github.com/angular/angular-cli) version 15.2.0.
