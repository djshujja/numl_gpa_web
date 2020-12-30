/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

/**
 *
 * @author DjShujja
 */
public class gpaLogic {
    public float gpa_logic(float marks, int ch){
        if(marks >= 89.5 ){
            System.out.println(marks + " " + ch + " " + ch*4);
            return 4 * ch;
        }
        else if(marks >= 79.5){
            System.out.println(marks + " " + ch + " " + ch*4);
            return 4 * ch;
        }
        else if(marks >= 76.5){
            System.out.println(marks + " " + ch + " " +ch*3.66);
            return (float) 3.66 * ch;
        }
        else if(marks >= 73.5){
            System.out.println(marks + " " + ch + " " +ch*3.33);
            return (float) 3.33 * ch;
        }
        else if(marks >=69.5){
            System.out.println(marks + " " + ch + " " +ch*3);
            return (float) 3 * ch;
        }
        else if(marks >=66.5){
            System.out.println(marks + " " + ch + " " +ch*2.66);
            return (float) 2.66 * ch;
        }
        else if(marks >= 63.5){
            System.out.println(marks + " " + ch + " " +ch*2.33);
            return (float) 2.33 * ch;
        } 
        else if(marks >=59.5){
            System.out.println(marks + " " + ch + " " +ch*2);
            return (float) 2 * ch;
        }
        else if(marks >=49.5){
            System.out.println(marks + " " + ch + " " +ch*1.5);
            return (float) 1.5 * ch;
        }
        else{
            return 0 * ch;
        }
    }
     public String marks_grade(float marks){
        if(marks >= 89.5 ){
            return "A1";
        }
        else if(marks >= 79.5){
            
            return "A2";
        }
        else if(marks >= 76.5){
            
            return "A3";
        }
        else if(marks >= 73.5){
            
            return "B1";
        }
        else if(marks >=69.5){
           
            return "B2";
        }
        else if(marks >=66.5){
            
            return "B3";
        }
        else if(marks >= 63.5){
           
            return "C1";
        } 
        else if(marks >=59.5){
            
            return "C2";
        }
        else if(marks >=49.5){
            
            return "D1";
        }
        else{
            return "F";
        }
    }
     public float grade_logic(String grade, int ch){
        if(null == grade){
            return 0 * ch;
        }
        else switch (grade) {
            case "A1":
                return 4 * ch;
            case "A2":
                return 4 * ch;
            case "A3":
                return (float) 3.66 * ch;
            case "B1":
                return (float) 3.33 * ch;
            case "B2":
                return (float) 3 * ch;
            case "B3":
                return (float) 2.66 * ch;
            case "C1":
                return (float) 2.33 * ch;
            case "C2":
                return (float) 2 * ch;
            case "D1":
                return (float) 1.5 * ch;
            default:
                return 0 * ch;
        }
}
}
