goal(wine).
!init.

+!init: goal(X) =>

    #println(Self + " Who is sufficiently benevolent to buy me wine?  ");
    TOMAgentName = "tomY";
    #println(Self + " checking whether " + TOMAgentName + "is sufficiently benevolent");
    #coms.ask(TOMAgentName, benevolent(Y,X));
    #println("question asked");
    TOM2AgentName = "tomZ";
    #println(Self + " checking whether " + TOM2AgentName + "is sufficiently benevolent");
    #coms.ask(TOM2AgentName, benevolent(Y,X));
    #println("question asked").

    

    +benevolent(Y,X) =>
    #println("agent " + Y + " is benevolent to buy " + X).


