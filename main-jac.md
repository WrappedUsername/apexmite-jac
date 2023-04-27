# The main.jac file

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

## The main_faq.json file

```json
[
    {
      "question": "What is Apexmite?",
      "answer": "TODO"
    },
    {
      "question": "TODO",
      "answer": "TODO"
    },
    {
      "question": "TODO",
      "answer": "TODO"
    },
    {
      "question": "TODO",
      "answer": "TODO"
    },
    {
      "question": "TODO",
      "answer": "TODO"
    },
    {
      "question": "TODO",
      "answer": "TODO"
    }
  ]
```

## Working faq_graph

```bash
root@Arrakis:~/apexmite-jac/apexmite-jac# jsctl -m
Jaseci 1.4.0.15
Starting Shell...
jaseci > graph create -set_active true
{
  "name": "root",
  "kind": "node",
  "jid": "urn:uuid:8ea61666-0194-429a-8cd4-115cc65a2997",
  "j_timestamp": "2023-04-27T00:05:26.634965",
  "j_type": "graph",
  "context": {}
}
jaseci > sentinel register main.jac
2023-04-26 18:05:38,445 - WARNING - rt_warn: ask.jac:main.jac - line 2, col 4 - rule can_stmt - Attempting auto-load for use.qa_classify
2023-04-26 18:05:38.625263: I tensorflow/tsl/cuda/cudart_stub.cc:28] Could not find cuda drivers on your machine, GPU will not be used.
2023-04-26 18:05:38.677042: I tensorflow/tsl/cuda/cudart_stub.cc:28] Could not find cuda drivers on your machine, GPU will not be used.
2023-04-26 18:05:38.677382: I tensorflow/core/platform/cpu_feature_guard.cc:182] This TensorFlow binary is optimized to use available CPU instructions in performance-critical operations.
To enable the following instructions: AVX2 FMA, in other operations, rebuild TensorFlow with the appropriate compiler flags.
2023-04-26 18:05:39.489329: W tensorflow/compiler/tf2tensorrt/utils/py_utils.cc:38] TF-TRT Warning: Could not find TensorRT
shared model created
Using device for training ->  cpu
User > 
jaseci > alias list
{
  "active:graph": "urn:uuid:9569fb8d-c8f3-4730-b089-945007524fd6",
  "sentinel:main.jac": "urn:uuid:70d93e58-5189-4bde-85af-e74083957509",
  "main.jac:architype:root": "urn:uuid:38064dc5-4838-47a6-9ab3-f1b95208f365",
  "main.jac:architype:generic": "urn:uuid:66ff151e-d1da-4733-9042-6a7e9d84fb0a",
  "main.jac:architype:server": "urn:uuid:cb405318-b0cf-4001-bb42-a99f5d1dadb3",
  "main.jac:architype:models": "urn:uuid:235318cc-7161-4577-82c8-e38decbb50f7",
  "main.jac:architype:faq_state": "urn:uuid:c1a38c80-d04e-4153-a109-6809fedecf29",
  "main.jac:architype:faq": "urn:uuid:a417b784-bb1d-4d11-afc8-ee0131d1b28a",
  "main.jac:walker:ask": "urn:uuid:d5673a3e-81be-4159-8535-8a38d7da7946",
  "main.jac:walker:ingest_faq": "urn:uuid:52fce732-de88-43b0-abea-d267517bfaaa",
  "main.jac:walker:init": "urn:uuid:e8848737-c396-44b5-9acc-60006a0be69a"
}
jaseci > graph get -mode dot -o main.dot
strict digraph root {
    "n0" [ label="n0:root"  ]
    "n1" [ label="n1:server"  ]
    "n2" [ label="n2:models"  ]
    "n3" [ label="n3:faq_state"  ]
    "n4" [ label="n4:faq_state"  ]
    "n5" [ label="n5:faq_state"  ]
    "n6" [ label="n6:faq_state"  ]
    "n7" [ label="n7:faq_state"  ]
    "n8" [ label="n8:faq_state"  ]
    "n9" [ label="n9:faq_state"  ]
    "n0" -> "n1" [ label="e0" ]
    "n1" -> "n2" [ label="e1" ]
    "n2" -> "n3" [ label="e2" ]
    "n3" -> "n4" [ label="e3" ]
    "n3" -> "n5" [ label="e4" ]
    "n3" -> "n6" [ label="e5" ]
    "n3" -> "n7" [ label="e6" ]
    "n3" -> "n8" [ label="e7" ]
    "n3" -> "n9" [ label="e8" ]
}
[saved to main.dot]
jaseci > exit
root@Arrakis:~/apexmite-jac/apexmite-jac# dot -Tpdf main.dot -o main.pdf
root@Arrakis:~/apexmite-jac/apexmite-jac#
```
