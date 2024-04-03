salaire_net_cadre = function(salaire_brut = 2500, temps_travail=1) {
  if (is.numeric(salaire_brut)&is.numeric(temps_travail)){
  salaire_net_avant_impot = salaire_brut * 0.75 * temps_travail
  return(salaire_net_avant_impot) }
  return("Erreur")}
salaire_net_cadre(salaire_brut = 2500, temps_travail=1)

salaire_net = function(salaire_brut = 2500, temps_travail=1, cadre="non cadre") {
  if (is.numeric(salaire_brut)&is.numeric(temps_travail)&cadre %in% c("cadre","non cadre")){
    if(cadre=="cadre"){
    salaire_net_avant_impot = salaire_brut * 0.75 * temps_travail
    return(salaire_net_avant_impot) } else {
      salaire_net_avant_impot = salaire_brut * 0.78 * temps_travail
      return(salaire_net_avant_impot) }
    }
  return("Erreur")}
salaire_net(salaire_brut = 1000, cadre="non 1cadre")

salaire_net = function(salaire_brut = 2500,temps_travail = 1, statut) {
  
  if (!is.numeric(salaire_brut)) {
    return("Erreur :  le salaire brut doit être une valeur numérique")
  }
  
  if (!is.numeric(temps_travail)) {
    return("Erreur :  le temps de travail doit doit être une valeur numérique")
  }
  
  if ( (temps_travail > 1) | (temps_travail < 0)) {
    return("Erreur :  le temps de travail doit être une valeur numérique entre 0 et 1")
  }
  
  if (!statut %in% c("cadre","non cadre")) {
    return("Erreur :  le statut doit être cadre ou non cadre")
  }
  
  if (statut == "cadre") {
    salaire_net_avant_impot = salaire_brut * temps_travail * 0.75
  } else {
    salaire_net_avant_impot = salaire_brut * temps_travail * 0.78
  }
  
  if (salaire_net_avant_impot <= 1591) {
    salaire_net_apres_impot <- salaire_net_avant_impot
  } else if (salaire_net_avant_impot <= 2006) {
    salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.029)
  } else if (salaire_net_avant_impot <= 3476) {
    salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.099)
  } else if (salaire_net_avant_impot <= 8557) {
    salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.20)
  } else {
    salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.43)
  }
  
  return(salaire_net_apres_impot) 
}