namespace GSB
{
    partial class AgenceView
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgAgences = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgAgences)).BeginInit();
            this.SuspendLayout();
            // 
            // dgAgences
            // 
            this.dgAgences.AllowUserToAddRows = false;
            this.dgAgences.AllowUserToDeleteRows = false;
            this.dgAgences.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgAgences.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgAgences.Location = new System.Drawing.Point(26, 12);
            this.dgAgences.Name = "dgAgences";
            this.dgAgences.ReadOnly = true;
            this.dgAgences.Size = new System.Drawing.Size(548, 314);
            this.dgAgences.TabIndex = 2;
            // 
            // AgenceView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(841, 485);
            this.Controls.Add(this.dgAgences);
            this.Name = "AgenceView";
            this.Text = "AgenceView";
            this.Load += new System.EventHandler(this.AgenceView_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgAgences)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgAgences;


    }
}