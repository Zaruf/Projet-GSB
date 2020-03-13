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
    public partial class FrmGSB : Form
    {
        public FrmGSB()
        {
            InitializeComponent();
        }

        // on déclare un objet de la classe LienBdd
        internal LienBdd uneCn;
        private DataTable dt = new DataTable();
        private int i = 0;
        private int noLigne;
        private void FrmGSB_Load(object sender, EventArgs e)
        {
            // connection à la bdd hippo sous sqlserver
            uneCn = new LienBdd();
        }

       

        private void consulterToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            this.Hide();
            AgenceView av = new AgenceView();
            av.ShowDialog();
        }

        

       

        
    }
}
