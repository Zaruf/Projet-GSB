using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GSB
{
    public partial class AgenceView : Form
    {
        public AgenceView()
        {
            InitializeComponent();
        }

        // on déclare un objet de la classe LienBdd
        internal LienBdd uneCn;
        private DataTable dt = new DataTable();
        private int i = 0;
        private int noLigne;
        private void AgenceView_Load(object sender, EventArgs e)
        {
            // connection à la bdd hippo sous sqlserver
            uneCn = new LienBdd();
            try
            {
                // remplissage de la data grid view
                dt = uneCn.ObtenirAgences();  // on appelle la méthode ObtenirCourses de la classe LienBdd
                this.dgAgences.DataSource = dt;
                this.dgAgences.DataMember = dt.TableName;
                this.dgAgences.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        


    }
}
