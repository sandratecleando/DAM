
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author usuario
 */
public class AltaCamion extends javax.swing.JFrame {

    /**
     * Creates new form AltaCamion
     */
    public AltaCamion() {
        initComponents();
        this.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        labColor = new javax.swing.JLabel();
        labRuedas = new javax.swing.JLabel();
        labCilin = new javax.swing.JLabel();
        labPoten = new javax.swing.JLabel();
        labEjes = new javax.swing.JLabel();
        txtColor = new javax.swing.JTextField();
        txtRuedas = new javax.swing.JTextField();
        txtCilin = new javax.swing.JTextField();
        txtPoten = new javax.swing.JTextField();
        txtEjes = new javax.swing.JTextField();
        btnAdd = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Source Code Pro Black", 1, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(0, 51, 255));
        jLabel1.setText("Alta de un Camión");

        labColor.setText("Color:");

        labRuedas.setText("Número de ruedas:");

        labCilin.setText("Cilindrada:");

        labPoten.setText("Potencia:");

        labEjes.setText("Número de ejes:");

        btnAdd.setText("Añadir");
        btnAdd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(82, 82, 82)
                                .addComponent(jLabel1))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(37, 37, 37)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(labColor)
                                        .addGap(80, 80, 80)
                                        .addComponent(txtColor, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(labRuedas)
                                            .addComponent(labCilin)
                                            .addComponent(labPoten)
                                            .addComponent(labEjes))
                                        .addGap(18, 18, 18)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(txtEjes, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(txtPoten, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(txtCilin, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(txtRuedas, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE))))))
                        .addGap(0, 103, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btnAdd)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(labColor)
                    .addComponent(txtColor, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(labRuedas)
                    .addComponent(txtRuedas, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(labCilin)
                    .addComponent(txtCilin, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(labPoten)
                    .addComponent(txtPoten, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(labEjes)
                    .addComponent(txtEjes, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(37, 37, 37)
                .addComponent(btnAdd)
                .addContainerGap(64, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnAddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddActionPerformed
        boolean b = true;
        String cad = "";
        String color = txtColor.getText();
        byte nruedas = 0, nejes = 0;
        short cilin = 0, poten = 0;
        
        if(txtColor.getText().isEmpty())
        {
            cad += "Falta el color\n";
            b = false;
        }

        if(txtRuedas.getText().isEmpty())
        {
            cad += "Falta el número de ruedas\n";
            b = false;
        }

        if(txtCilin.getText().isEmpty())
        {
            cad += "Falta la cilindrada\n";
            b = false;
        }

        if(txtPoten.getText().isEmpty())
        {
            cad += "Falta la potencia\n";
            b = false;
        }

        if(txtEjes.getText().isEmpty())
        {
            cad += "Falta el número de ejes\n";
            b = false;
        }

        if(b == false)
        {
            JOptionPane.showMessageDialog(null, cad, "Error", JOptionPane.WARNING_MESSAGE);
        }
        else
        {
            try
            {
                nruedas = Byte.parseByte(txtRuedas.getText());
            }
            catch(NumberFormatException e)
            {
                JOptionPane.showMessageDialog(null, "El formato del número de ruedas es incorrecto", "Error", JOptionPane.ERROR_MESSAGE);
                b = false;
            }
            
            try
            {
                cilin = Short.parseShort(txtCilin.getText());
            }
            catch(NumberFormatException e)
            {
                JOptionPane.showMessageDialog(null, "El formato de la cilindrada es incorrecto", "Error", JOptionPane.ERROR_MESSAGE);
                b = false;
            }
            
            try
            {
                poten = Short.parseShort(txtPoten.getText());
            }
            catch(NumberFormatException e)
            {
                JOptionPane.showMessageDialog(null, "El formato del número de la potencia es incorrecto", "Error", JOptionPane.ERROR_MESSAGE);
                b = false;
            }
            
            try
            {
                nejes = Byte.parseByte(txtEjes.getText());
            }
            catch(NumberFormatException e)
            {
                JOptionPane.showMessageDialog(null, "El formato del número de ejes es incorrecto", "Error", JOptionPane.ERROR_MESSAGE);
                b = false;
            }
            
            if(b)
            {
                Camion nCamion = new Camion(color, nruedas, nejes, cilin, poten);
                Grafica.camiones.add(nCamion);
                JOptionPane.showMessageDialog(null, "Camión añadido", "Correcto", JOptionPane.INFORMATION_MESSAGE);
            }
        }
    }//GEN-LAST:event_btnAddActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(AltaCamion.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AltaCamion.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AltaCamion.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AltaCamion.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AltaCamion().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAdd;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel labCilin;
    private javax.swing.JLabel labColor;
    private javax.swing.JLabel labEjes;
    private javax.swing.JLabel labPoten;
    private javax.swing.JLabel labRuedas;
    private javax.swing.JTextField txtCilin;
    private javax.swing.JTextField txtColor;
    private javax.swing.JTextField txtEjes;
    private javax.swing.JTextField txtPoten;
    private javax.swing.JTextField txtRuedas;
    // End of variables declaration//GEN-END:variables
}
