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

The Apexmite Content Federation is an AI powered Jaseci Progressive Web App (desktop, and mobile app downloads, along with website). Apexmite AI will always be there to help you navigate the Apexmite App, as a fully interactive conversational AI, for those that are anon guests, skeptics, or free tier contributors. The anon users that choose to purchase a premium content membership, or content creators sharing their encounters that wish to purchase Apexmite's full creative capacity with a Pro AI Content Assistant subscription will get to use Apexmite AI Agents with greater creative abilities, or other enhanced capabilties whenever they are released.

With the main growth driver for Apexmite Content Federation being a 50/50 profit share, after business operating costs have been paid, to those that share their *true* stories of unexplained encounters, of ufos, bigfoot, werewolves, etc.

<img width="250" height="250" align="left" src="https://user-images.githubusercontent.com/104662990/234374573-8fc4f050-cf32-4ba4-9733-33fb81fac7af.jpg"></img>

<img width="250" height="250" align="left" src="https://user-images.githubusercontent.com/104662990/234373448-12b122ff-5391-46f1-ac76-e60f3fbf90ef.jpg"></img>

<img width="250" height="250" align="left" src="https://user-images.githubusercontent.com/104662990/234371379-574ff1d6-4404-4bf8-a6cb-0ccb880e3467.jpg"></img>

## If you share your stories with others (I do not mind if you do, please share with others), *but* they do not share the profits *they* make *from your story* this is your content, and I feel *you* should benefit too, from this encounter of the unexplained that *you* experienced.

So please, I encourage you to strongly consider sharing your stories of the unexplained with Apexmite Content Federation!

## Are *you* a skeptic?

<img width="512" height="512" align="left" src="https://user-images.githubusercontent.com/104662990/234379664-8c8a6e4b-956f-4468-b3cb-620e8ebcfc78.jpeg"></img>

If *you* think this is all *HOGWASH*, well Apexmite Content Federation encourages *you* to debunk and *respectfully* find and expose possible misunderstandings (you must remain respectful at all times when debunking), skeptics will have a higher burden of proof (we don't want your lazy explainations), and will only be rewarded with third party verification of your debunking claims, of hoaxes, misunderstandings, etc. This does give skeptics a chance to earn rewards if they do debunk stories respectfully with strong third party verifiable proof of your counter aurgument for why this is all hogwash.

Bring it skeptics, prove everyone wrong.

I honestly think if couch potato skeptics get outside into the forests, out there digging for real info, they are going to find some things, that may just change their mind about ufos, bigfoot, etc.

<img width="250" height="250" align="left" src="https://user-images.githubusercontent.com/104662990/234382597-58e0498a-11d3-4526-9a3c-93d541d0345c.jpeg"></img>

Get out there into the national forests and parks, and find out, those that share their stories of the unexplained are doing their best to explain something they do not fully understand, so they do not have the burden of proof here, it's *YOU SKEPTICS* that must prove your explainations (and swamp gas ain't gonna cut it here buddy)!

- 50/50 profit share Encounter Witness, free tier
- 50/50 profit share Encounter Witness, Pro AI Content Assistant subscription - monthly or annual - maybe beta access lifetime premium memberships for a one time payment, (a reward for signing up early).
- Skeptic Verified Debunking Reward, flipped profit share, the profit share of debunked stories, will become the property of the skeptic, as their share of the rewards.

## Apexmite Content Federation will provide a fiction section for stories that are not true, so please do not create hoaxes because we encourage the skeptics to find hoaxes, it's like a contest or game.

```yml
Saving state with a maintainer walker:
```

```jac
can cleanup with talker entry{
    if (!vistor:hoping) {
       spawn *(global.node_conv_root_state) walker::maintainer(
            user_id = visitor.user_id,
            user_context = vistor.user_context,
            dialogue_context = vistor.dialogue_context,
            last_conv_state = vistor.state_for_continuing
            // Add ERC-4337 account abstractions or any other saved states, etc here.
       );
    }
}
```

- Nodes, edges, and walkers can all have abilities.
  - Abilities cannot interact outside of the context and local variables of the attached node, edge, or walker, and does not have a return meaning.

The structure of the app will be in the form of a graph.

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

- Creating markdown mermaid diagrams as pseudocode:

```mermaid
graph TD;
    node_root-->node_landing_page
    node_root-->node_auth_user_dir
    node_root-->node_entity_extraction
    node_root-->node_embedding_cache
    node_root-->node_models
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

```typescript
// import the graph and walker.
import {*} with "./chat_graph.jac";
import {*} with "./faq_graph.jac";
import {*} with "./walker.jac";

/// @notice this walker is reponsible for starting the program.
walker init {

    root {
        // creates an instance of the chat_graph
        spawn here ++> graph::chat_graph;
        
        // creates an instance of the faq_graph
        spawn here ++> graph::faq_graph;

        // creates an instance of the walker, talker
        spawn --> walker::talker;
    }
}
```

```bash
sudo service redis-server restart
```

## Continued in moreREADME folder
