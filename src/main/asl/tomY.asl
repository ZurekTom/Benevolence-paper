inplan(plan2,shop).
inplan(plan2,wine).
inplan(plan1,shop).
initial(plan1).
phi(comfort,plan1,0.6).
phi(comfort,plan2,0.5).
phi(fun,plan1,0.3).
phi(fun,plan2,0.3).
benevolence(comfort,0.2).
benevolence(fun,0.2).
wrongplan(X,V):- phi(V,X,Y) && benevolence(V,Z) && initial(Plan) && phi(V,Plan,T) && Ben is (Y+Z) && T>Ben.
acceptable(X):- not wrongplan(X,_).



+?benevolent(Y,X): inplan(Z,X) && acceptable(Z) => #println("acceptable plan " + Z); #coms.inform(agentX, benevolent(agentY,X)).




