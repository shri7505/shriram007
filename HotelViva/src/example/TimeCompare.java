package example;

import java.util.Calendar;

public class TimeCompare {

	public static void main(String[] args) {
		// Get calendar set to the current date and time
		Calendar cal = Calendar.getInstance();
		 
		// Set time of calendar to 10:00
		cal.set(Calendar.HOUR_OF_DAY, 11);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		 
		// Check if current time is after 18:00 today
		boolean afterSix = Calendar.getInstance().after(cal);
		 
		if (afterSix) {
		    System.out.println("Go home, it's after 11 PM!");
		}
		else {
		    System.out.println("Hello!");
		}
	}

}
