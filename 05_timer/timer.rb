#write your code here
def time_string(sec)
  #initialisation des heures et des minutes
  h = 0
  min = 0

  #si sec est plus grand que 3600 calcul le nombre d'heure
  if sec > 3600
    h = sec/3600
  end
  #on enleve les heures aux secondes
  sec = sec - (h*3600)
  #si sec est plus grand que 60 on calcule le nombre de minute
  if sec > 60
    min = sec/60
  end
  #on enleve les minutes aux secondes
  sec = sec - (min*60)
  #si les heures sont plus petites que 10 on affiche un 0 devant puis le chiffre des heures 
  if h  < 10
    h = "0"+ h.to_s
  #si les heures sont égales à 0 on rajout deux 0 sinon on convertis en string
  elsif h == 0
    h = "00"
  #sinon on affiche les heures en string
  else
    h = h.to_s
  end
  #si les minutes sont plus petites que 10 on affiche un 0 devant puis le chiffre des minutes
  if min < 10
    min = "0"+ min.to_s
  #sinon si les minutes sont égales à 0 on affiche deux 0
  elsif min == 0
    min = "00"
  #sinon on affiche les minutes en string
  else
    min = min.to_s
  end
  #si les secondes sont plus petites que 10 on affiche un 0 devant puis les secondes
  if sec < 10
    sec = "0"+ sec.to_s
  #sinon si les secondes sont égales à 0 on affiche deux 0
  elsif sec == 0
    sec = "00"
  #sinon on affiche les secondes en string
  else
    sec = sec.to_s
  end
  #on Affiche les résultats
  return "#{h}:#{min}:#{sec}"
end
