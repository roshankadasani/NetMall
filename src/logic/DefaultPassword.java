package logic;

import java.util.Random;

public class DefaultPassword {
	public static String GenPassword()
	{
		
		char data[]={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9'};
        char index[]=new char[7];
        
        Random r=new Random();
       
        for(int i=0;i<(index.length);i++)
        {
        	int ran=r.nextInt(data.length);
        	index[i]=data[ran];
        }
        
        
        String captcha=String.valueOf(index);
        System.out.println("captcha is"+captcha);
	
	return captcha;
	}
	
	public static void main(String [] args[])
	{
		DefaultPassword.GenPassword();
	}

}
