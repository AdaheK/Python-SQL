import mysql.connector

#connexion à la base de données ecole
ecole = mysql.connector.connect(host="127.0.0.1",user="root",password="",database="ecole")

#extraction des données
session = ecole.cursor()
sql = "select * from eleves"
session.execute(sql)
resultat = session.fetchall()
sql2 = "select * from enseignants"
session.execute(sql2)
resultat2 = session.fetchall()
#affichage des données
print("Contenu de la table étudiants :")
print(resultat)
print("\nContenu de la table enseignants :")
print(resultat2)
ecole.close()
print("-----------------------------------------------------------------------------------------------")

#manipulation des données
print("Association de chaque étudiants :")
for i in resultat:
    for j in resultat2:
        if i[7]==j[8]:
            print("l'étudiant "+i[1]+" "+i[2]+" est associé au prof "+j[1]+" "+j[2])
print("-----------------------------------------------------------------------------------------------")
#analyse des données
print("Nombre d'élèves pour chaque étudiant :")
liste = []
for i in resultat2:
    eleve = 0
    dictionnaire = {}
    for j in resultat :
        if i[8] == j[7]:
            eleve = eleve + 1
    dictionnaire["id_prof"] = i[0]
    dictionnaire["nom_prof"] = i[2]
    dictionnaire["prenom_prof"] = i[1]
    dictionnaire["nombre_eleve"] = eleve
    liste.append(dictionnaire)
for prof in liste:
    print("Le prof "+prof["prenom_prof"]+" "+prof["nom_prof"]+" a à sa charge "+str(prof["nombre_eleve"])+" élève(s).")