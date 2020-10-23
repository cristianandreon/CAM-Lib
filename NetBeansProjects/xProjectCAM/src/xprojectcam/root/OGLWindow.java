/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xprojectcam.root;

import com.jogamp.opengl.GL3;
import com.jogamp.opengl.GLAutoDrawable;
import com.jogamp.opengl.GLCapabilities;
import com.jogamp.opengl.GLEventListener;
import com.jogamp.opengl.GLProfile;
import com.jogamp.opengl.awt.GLJPanel;
import java.awt.BorderLayout;
import javafx.scene.layout.AnchorPane;
import javax.swing.JFrame;

public class OGLWindow {
            
    private Main pMain = null;
    static String Version = "1.01";

    public OGLWindow(Main main, AnchorPane rootPane, int width, int height) {

        // super("xProject CAM/2D ver" + OGLWindow.Version);
        pMain = main;

        try {

            GLProfile glprofile = GLProfile.get(GLProfile.GL3);
            GLCapabilities glcapabilities = new GLCapabilities(glprofile);
            GLJPanel gljpanel = new GLJPanel(glcapabilities);

            gljpanel.addGLEventListener(new GLEventListener() {

                @Override
                public void reshape(GLAutoDrawable glautodrawable, int x, int y, int width, int height) {
                    // OneTriangle.setup( glautodrawable.getGL().getGL2(), width, height );
                    pMain.nDwgScreenSize(width, height);
                }

                @Override
                public void init(GLAutoDrawable glautodrawable) {
                    GL3 gl = glautodrawable.getGL().getGL3();
                    gl.glClearColor(0.2f, 0.1f, 0.1f, 1.0f);
                }

                @Override
                public void dispose(GLAutoDrawable glautodrawable) {
                }

                @Override
                public void display(GLAutoDrawable glautodrawable) {
                    GL3 gl = glautodrawable.getGL().getGL3();
                    gl.glClear(GL3.GL_COLOR_BUFFER_BIT | GL3.GL_DEPTH_BUFFER_BIT);

                    // call your draw code here 
                    try {
                        pMain.drawScene(0 + 0);
                    } catch (Exception ex) {
                        System.err.println(ex.getMessage());
                    }

                    gl.glFlush();
                }
            });
            
            
            pMain.nDwgScreenSize(width, height);
            
            // gljpanel.setVisible(true);
            // gljpanel.setSize(width, height);

            /* DA TESTATRE
            SwingUtilities.invokeLater(new Runnable() {
                @Override
                public void run() {
                    // Creating swing node
                    final SwingNode swingNode = new SwingNode();
                    gljpanel.add(new JButton("Click me!"));
                    swingNode.setContent((JComponent) gljpanel);
                    swingNode.setVisible(true);
                    // Adding swing node
                    rootPane.getChildren().add(swingNode);
                }
            });
            */

            /* OK */
            final JFrame jframe = new JFrame( "One Triangle Swing GLJPanel" ); 
            jframe.getContentPane().add( gljpanel, BorderLayout.CENTER );
            jframe.setSize( 640, 480 );
            jframe.setVisible( true );
 
 
            /*
            GLCapabilities capabilities = new GLCapabilities(glprofile);

            GLCanvas canvas = new GLCanvas(capabilities);
            canvas.addGLEventListener(this);

            // this.setRootPane(rootPane);
            
            // this.rootPane = parent;
            
            this.setName("Minimal OpenGL");
            this.getContentPane().add(canvas);

            this.setSize(width, height);
            this.setLocationRelativeTo(null);
            // this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            this.setVisible(true);
            // this.setResizable(false);

            canvas.requestFocusInWindow();
             */
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        }
    }

    
}
