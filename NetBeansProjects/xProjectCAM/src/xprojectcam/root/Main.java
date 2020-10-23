/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xprojectcam.root;

import com.jogamp.opengl.awt.GLJPanel;
import java.awt.Container;
import java.io.IOException;
import java.net.URL;
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

/**
 *
 * @author root
 */


import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.embed.swing.SwingNode;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.layout.AnchorPane;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.JWindow;
import javax.swing.SwingUtilities;

public class Main extends Application {
    
    OGLWindow oglWindow = null;

    String sample0 = "/media/Data/xProjectCAM/07.01.001-0E.dwg";

    
    public static void printLibPath() {
        String javaLibPath = System.getProperty("java.library.path");
        Map<String, String> envVars = System.getenv();
        System.out.println(envVars.get("Path"));
        System.out.println(javaLibPath);
    }

    
    static {
        try {
            // Load necessary libraries.
            System.loadLibrary("xProjectCAMLib");
        } catch (UnsatisfiedLinkError e) {
            System.err.println("Native code library error.\n");
            printLibPath();
        }
    }
    
    @Override
    public void start(Stage primaryStage) {
        String ver = "";
        
        try {

            nDwgInit();

            ver = nDwgGetVersion();
            
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        
        Button btn = new Button();
        btn.setText("C/CPP Libray Ver.: " + ver );
        btn.setOnAction(new EventHandler<ActionEvent>() {           
            @Override
            public void handle(ActionEvent event) {                
            }
        });
        
        
        URL url = getClass().getResource("Main.fxml");

        // StackPane root = new StackPane();
        AnchorPane root = null;
        try {
            root = FXMLLoader.load(url);
        } catch (IOException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }

        

        btn.setLayoutX(100);
        btn.setLayoutY(500);       
        
        Scene scene = new Scene(root, 900, 700);
        
        // scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
        
        primaryStage.setTitle("xProject 2D CAM");
        primaryStage.setScene(scene);

        
        root.getChildren().add(btn);

         
        AnchorPane apSub = (AnchorPane)root.lookup("anchorPaneSub");
        
        
        // Container container = apSub.getChildren();        

        oglWindow = new OGLWindow(this, null, 800, 600);
        
        if (nDwgLoad ( sample0, 0+0 ) <= 0) {
            System.out.println("Load Dwg Failed");
        }
        
        primaryStage.show();
        
    }

    
    

     
     
     
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
    public void drawScene( int Mode ) {
        nDwgDrawScene(Mode);
    }
    
    /**
     *
     */
    public native void nDwgInit ( );
    public native String nDwgGetVersion ( );
    public native int nDwgDrawScene ( int Mode );
    public native int nDwgLoad ( String file, int Mode );
    public native int nDwgScreenSize ( int wx, int wy );
    
}
