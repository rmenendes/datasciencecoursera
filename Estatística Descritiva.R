#R Estatística Descritiva

#Qualitativas ordinais
#Classe social, grau de instrução e estágio
#da doença. 
classe_social=c("A","B","C","D","E")
grau_instrucao=c("Ensino fundamental","Ensino médio","Ensino Superior")
estagio_doenca=c("Estágio inicial","Estágio intermediário","Estágio terminal")
meses=c("Janeiro","Fevereiro","março")
ranking=c("Primeiro","Segundo","Terceiro")

a_classe_social=sample(classe_social,size=100, replace=TRUE)
a_grau_intrucao=sample(grau_instrucao,size=100, replace=TRUE)
a_estagio_doenca=sample(estagio_doenca,size=100, replace=TRUE)
a_meses=sample(meses,size=100, replace=TRUE)
a_ranking=sample(ranking,size=100, replace=TRUE)

variaveis_categoricas_ordinais=data.frame(a_classe_social,
                                          a_grau_intrucao,
                                          a_estagio_doenca,
                                          a_meses,a_ranking)
variaveis_categoricas_ordinais
View(variaveis_categoricas_ordinais)

#pizza frequência simples
df_pizza_tab=table(variaveis_categoricas_ordinais$a_classe_social)
df_pizza=as.data.frame(df_pizza_tab)
df_pizza

pie(df_pizza$Freq,
    labels=paste(df_pizza$Var1,df_pizza$Freq),
    main="Gr?fico de pizza do n?mero de pessoas por classe social")

#pizza frequência relativa
df_pizza_porcent=prop.table(df_pizza_tab)
df_pizza_porcent=as.data.frame(df_pizza_porcent)
df_pizza_porcent

pie(df_pizza_porcent$Freq,
    labels=paste(df_pizza_porcent$Var1,df_pizza_porcent$Freq*100,"%"),
    main="Gráfico de pizza - Frequência relativa classe social (%)")

grafico_pizza_iterativo = plot_ly(df_pizza, 
                                  labels = ~Var1, 
                                  values = ~Freq, 
                                  type = 'pie') %>%
  layout(title = 'Frequência relativa da Classe Social (%) ')

