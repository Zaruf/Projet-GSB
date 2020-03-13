using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace GSB
{
    class LienBdd
    {
        //
        // propriétés membres
        //
        private SqlConnection cn;
        private SqlCommand cde;
        private SqlDataAdapter da;
        private DataTable dt;
        //
        // méthodes
        //
        /// <summary>
        /// constructeur de la connexion
        /// </summary>
        public LienBdd()
        {
            try
            {
                // on commence par récupérer dans ch les informations contenues dans le fichier app.config
                // pour la connectionString de nom MaConnection
                string ch = ConfigurationManager.ConnectionStrings["MaConnection"].ConnectionString;
                cn = new SqlConnection(ch);
                cn.Open();
            }
            catch (SqlException)
            {
                throw new Exception("Erreur à la connexion");
            }
        }
        
        /// <summary>
        /// Méthode permettant de fermer la connexion
        /// </summary>
        public void FermerConnexion()
        {
            this.cn.Close();
        }

        public DataTable ObtenirAgences()
        {
            String req = "select * from agence";
            this.cde = new SqlCommand(req, cn);
            da = new SqlDataAdapter();
            da.SelectCommand = this.cde;
            dt = new DataTable();
            //Le DataAdapter da va se charger ensuite de remplir la DataTable 
            da.Fill(dt);

            return dt;
        }
    

    } 
    
        
}
