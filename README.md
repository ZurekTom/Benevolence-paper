# The model of Benevolence for Multi-Agent-System agents implemented as an AgentScript (ASC2) Maven/Java Example Project
## What is ASC2?
ASC2 is a Multi-Agent System framework mainly for the agents created with [AgentScript agent programming language](https://github.com/mostafamohajeri/scriptcc-translator). The language of ASC2 is based on [AgentSpeak(L)/Jason](https://github.com/jason-lang/jason).

## How does it work?
ASC2 works as a cross-compiler that translates the high level language of AgentScript into lower level executable languages and in the current version the lower level language is Scala. ASC2 heavily utilizes Akka actor framework, meaning at run-time, each ASC2 agent becomes an actor-based micro-system. For more information please refer to this [paper](https://dl.acm.org/doi/abs/10.1145/3427760.3428339)

As ASC2 agents are cross-compiled into Scala, all the available mainstream development and deployment tools for JVM including online CI/CD tools are usable with ASC2 out-of-the-box. For more information about this please refer to this [paper](https://dl.acm.org/doi/abs/10.1007/978-3-030-97457-2_15).


## Scenario:
This project models and implements following scenario: 

Suppose that X (trustor) wants to delegate task to someone, to go to the a supermarket and to buy him a bottle of wine. He can ask Y or Z to do this. If he asks Y, who has already a plan to go to a supermarket to do some shopping, then accepting this delegation and fulfilling it, does not require a strong effort from Y. If X ask Z, who plans to go to the party at that time, then accepting this delegation and doing what he was asked for, would require much more effort, because Z should sacrifice his own plans and abandon going to the party.

## Details of the project:
Files agentX.asl represent the main agent X. Files tomY.asl and tomZ.asl represent the image of the agents Y and Z in mind of agent X. 


## How to use?
The details of running  of the exewmplary AgentScript (ASC2) Maven/Java Example Project can be found here : [https://github.com/mostafamohajeri/agentscript](https://github.com/mostafamohajeri/agentscript)

Requirements:
* Java 11+
* sbt or maven

To compile the agents enter:
$ mvn clean generate-sources scala:compile
in the project folder.

To compile the project enter:
$ mvn clean generate-sources scala:compile compile

To run the project enter: 
$ mvn generate-sources scala:compile compile  exec:java -Dexec.mainClass="MainMaven"

