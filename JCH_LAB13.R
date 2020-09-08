####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Jair Chilpa Hern·ndez (UAEH)

# LABORATORIO - Gr·ficos en R con ggplot2 para Ciencia de Datos
#Grafica de puntos en R (PARTE 1)



#instalando paquete con los datos
install.packages("gapminder")

# cargando paquete con los datos
library(gapminder)

# cargando datos a entorno
data("gapminder")

# filtrando por a√±o 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]


# cargar libreria ggplot2
library(ggplot2)


# como hacer grafica de puntos con ggplot2
ggplot(data = gapminder2007,
       mapping = aes (x = gdpPercap,
                      y = lifeExp)) +
  geom_point ()

# probando diferentes colores
ggplot(data = gapminder2007,
       mapping = aes (x = gdpPercap,
                      y = lifeExp,
                      color = continent)) +
  geom_point ()



# probando diferentes m·s aestetics
ggplot(data = gapminder2007,
       mapping = aes (x = gdpPercap,
                      y = lifeExp,
                      color = continent,
                      shape = continent,
                      size = pop)) +
  geom_point ()







# colocando texto
ggplot(data = gapminder2007,
       mapping = aes (x = gdpPercap,
                      y = lifeExp,
                      color = continent,
                      shape = continent,
                      size = pop)) +
  geom_point () +
  geom_text(label =gapminder2007$country,
            color = "black" ,
            size = 3)

# colocando lineas de regresion
ggplot(data = gapminder2007,
       mapping = aes (x = gdpPercap,
                      y = lifeExp,
                      color = continent)) +
  geom_point () +
  geom_smooth (method = lm,
              se = FALSE,
              fullrange = TRUE)


