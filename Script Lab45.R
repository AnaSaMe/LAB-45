#-----------------LABORATORIO 45---------------------
# Hecho con gusto por Dra. Carla Carolina Pérez Hernández (UAEH)
#------------Alumna: Ana Grisel Sanjuan Merida--------------------

# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
#Grafica de puntos en R (PARTE 1)

#Instalando paquete con los datos
install.packages("gapminder")

#Cargando paquete con los datos
library(gapminder)


#Cargando datos a entorno
data("gapminder")
#Aparece en el environment con 1704 observaciones

#Filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]
#Aparece en el environment con 142 observaciones

#Para visualizar
head(gapminder2007)

#Cargar libreria ggplot2
library(ggplot2)


#Gráfica de puntos con ggplot2
#Mapear con elemento estético aes
#Las X serán el PIB per cápita gdpPercap
#Las Y serán la expectativa de vida
#Tipo de gráfica de puntos
ggplot(data=gapminder2007,
       mapping = aes (x = gdpPercap,
                      y = lifeExp)) + 
  geom_point()
#Aparece la visualización

#Probando diferentes colores
#Gráfica de puntos con ggplot2
#Mapear con elemento estético aes
#Las X serán el PIB per cápita gdpPercap
#Las Y serán la expectativa de vida
#Tipo de gráfica de puntos
#El color por continente
ggplot(data=gapminder2007,
       mapping = aes (x = gdpPercap,
                      y = lifeExp,
                      color = continent)) +
  geom_point()


#Probando diferentes más aestetics
#Gráfica de puntos con ggplot2
#Mapear con elemento estético aes
#Las X serán el PIB per cápita gdpPercap
#Las Y serán la expectativa de vida
#Tipo de gráfica de puntos
#El color por continente
#Forma dada por el continente
#Tamaño de los puntos dependiendo de la población
ggplot(data=gapminder2007,
       mapping = aes (x = gdpPercap,
                      y = lifeExp,
                      color = continent,
                      shape = continent,
                      size = pop)) +
  geom_point()

#Colocando texto
#Gráfica de puntos con ggplot2
#Mapear con elemento estético aes
#Las X serán el PIB per cápita gdpPercap
#Las Y serán la expectativa de vida
#Tipo de gráfica de puntos
#El color por continente
#Forma dada por el continente
#Tamaño de los puntos dependiendo de la población
#Geometría de texto. Etiqueta que proviene de gapminder2007, definido por países country
#Color negro y de tamaño 3
ggplot(data=gapminder2007,
       mapping = aes (x = gdpPercap,
                      y = lifeExp,
                      color = continent,
                      shape = continent,
                      size = pop)) +
  geom_point() +
  geom_text(label = gapminder2007$country,
            color = "black" ,
            size = 3)


#Colocando líneas de regresión
#Tipo de gráfica de puntos
#El color por continente
#Forma dada por el continente
#Líneas de regresión. Método lineal
ggplot(data=gapminder2007,
       mapping = aes (x = gdpPercap,
                      y = lifeExp,
                      color = continent)) +
  geom_point() +
  geom_smooth(method = lm)

#Tipo de gráfica de puntos
#El color por continente
#Forma dada por el continente
#Líneas de regresión hasta el final del gráfico con se y fullrange
ggplot(data=gapminder2007,
       mapping = aes (x = gdpPercap,
                      y = lifeExp,
                      color = continent)) +
  geom_point() +
  geom_smooth(method = lm,
              se = FALSE,
              fullrange = TRUE)

#-----------------------FIN LABORATORIO 45---------------------------
