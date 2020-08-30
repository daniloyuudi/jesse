# Danilo Yuudi Hirata
# 819228171

# 1. Calcule resultado da soma de 5 e 15
soma <- 5 + 15; soma
# 2. Calcule diferença entre 11 e 7
diff <- 11 - 7; diff
# 3. Calcule multiplicação entre 3 e 2
mult <- 3 * 2; mult
# 4. Calcule divisão entre (10+8) e 3
div <- (10+8)  / 3; div
# 5. Calcule 4 elevado a 3
pow <- 4**3; pow
# 6. Calcule módulo de -4
mod <- abs(-4); mod
# 7. Defina os vetores A_vetor e B_vetor e calcule a soma entre eles. Atribua o valor a variável total.
# A_vector = c(1, 2, 3)
# B_vector = c(4, 5, 6)
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)
total <- A_vector + B_vector; total
# 8. Crie o data frame sistema_solar a partir dos vetores abaixo:
# name = c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
# type = c("Terrestrial planet", "Terrestrial planet" , "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
# diameter = c(0.382, 0.949, 1, 0.532, 11.209, 9.449 , 4.007, 3.883) # Em relação a Terra
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883) # Em relação a Terra
sistema_solar <- data.frame(nome = name, tipo = type, diametro = diameter,
                            stringsAsFactors = FALSE); sistema_solar
# 9. Crie o vetor rings e adicione ao data frame sistema solar como coluna:
# rings = c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
sistema_solar <- cbind(sistema_solar, rings); sistema_solar
# 10. Crie uma matriz a partir dos vetores do exercício 7.
matrix <- matrix(data = c(A_vector, B_vector, total), nrow = 3, ncol = 3); matrix
