/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Kothari
 */
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import com.itextpdf.html2pdf.HtmlConverter;

public class App 
{
	
    public static void main( String[] args ) throws FileNotFoundException, IOException  
    {
    	HtmlConverter.convertToPdf(new FileInputStream("index.html"), 
            new FileOutputStream("index-to-pdf.pdf"));

        System.out.println( "PDF Created!" );
    }
}
