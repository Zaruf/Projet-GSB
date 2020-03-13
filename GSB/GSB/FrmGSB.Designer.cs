namespace GSB
{
    partial class FrmGSB
    {
        /// <summary>
        /// Variable nécessaire au concepteur.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Nettoyage des ressources utilisées.
        /// </summary>
        /// <param name="disposing">true si les ressources managées doivent être supprimées ; sinon, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Code généré par le Concepteur Windows Form

        /// <summary>
        /// Méthode requise pour la prise en charge du concepteur - ne modifiez pas
        /// le contenu de cette méthode avec l'éditeur de code.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.accueilToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.campagnesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.consulterToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.contrôleToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mécénatToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.consulterToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.accueilToolStripMenuItem,
            this.campagnesToolStripMenuItem,
            this.contrôleToolStripMenuItem,
            this.mécénatToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(436, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // accueilToolStripMenuItem
            // 
            this.accueilToolStripMenuItem.Name = "accueilToolStripMenuItem";
            this.accueilToolStripMenuItem.Size = new System.Drawing.Size(58, 20);
            this.accueilToolStripMenuItem.Text = "Accueil";
            // 
            // campagnesToolStripMenuItem
            // 
            this.campagnesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.consulterToolStripMenuItem});
            this.campagnesToolStripMenuItem.Name = "campagnesToolStripMenuItem";
            this.campagnesToolStripMenuItem.Size = new System.Drawing.Size(82, 20);
            this.campagnesToolStripMenuItem.Text = "Campagnes";
            // 
            // consulterToolStripMenuItem
            // 
            this.consulterToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.consulterToolStripMenuItem1});
            this.consulterToolStripMenuItem.Name = "consulterToolStripMenuItem";
            this.consulterToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.consulterToolStripMenuItem.Text = "Agences";
            // 
            // contrôleToolStripMenuItem
            // 
            this.contrôleToolStripMenuItem.Name = "contrôleToolStripMenuItem";
            this.contrôleToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.contrôleToolStripMenuItem.Text = "Contrôle";
            // 
            // mécénatToolStripMenuItem
            // 
            this.mécénatToolStripMenuItem.Name = "mécénatToolStripMenuItem";
            this.mécénatToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.mécénatToolStripMenuItem.Text = "Mécénat";
            // 
            // consulterToolStripMenuItem1
            // 
            this.consulterToolStripMenuItem1.Name = "consulterToolStripMenuItem1";
            this.consulterToolStripMenuItem1.Size = new System.Drawing.Size(152, 22);
            this.consulterToolStripMenuItem1.Text = "Consulter";
            this.consulterToolStripMenuItem1.Click += new System.EventHandler(this.consulterToolStripMenuItem1_Click);
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = global::GSB.Properties.Resources.gsb;
            this.pictureBox2.Location = new System.Drawing.Point(62, 82);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(288, 176);
            this.pictureBox2.TabIndex = 3;
            this.pictureBox2.TabStop = false;
            // 
            // FrmGSB
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(436, 334);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FrmGSB";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.FrmGSB_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem accueilToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem campagnesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem contrôleToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mécénatToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consulterToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consulterToolStripMenuItem1;
        private System.Windows.Forms.PictureBox pictureBox2;
    }
}

