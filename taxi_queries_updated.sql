#SIMPLE QUERIES                                                                                                                                                               
#1.WRITE A QUERY TO DISPLAY THE MAXIMUM EXPERIENCE YEARS FROM DRIVER TABLE:
  
 Select Max(Experience_yrs) from Driver; 

#2. WRITE A QUERY TO DISPLAY THE MODE OF PAYMENT OF ALL THE CUSTOMERS FROM BILL DETAILS TABLE:

Select Mode_of_Payment from Bill Details group by Mode_of_Payment ;

#3. WRITE A QUERY TO DISPLAY ALL THE DRIVER ID'S ALONG WITH THE NO OF DRIVERS WORKING IN IT:
  
  // Select Driver-id,count* from Driver group by Driver-id; //

#4. WRITE A QUERY TO DISPLAY THE N_area from the Areas table:
   
   // Select N_area from Areas group by N_area; // 

#5.  WRITE A QUERY TO DISPLAY THE DETAILS OF ALL THE PASSENGERS :
 
   // Select * from passenger; //


NESTED QUERIES

#1. LIST THE DETAILS OF DRIVER WHOSE FIRST NAME IS  EITHER ravi or Hari:

  // Select * from Driver where
                        Fname in ('ravi','Hari'); //

#2. WRITE A QUERY TO DISPLAY THE SECOND HIGHEST TOTAL AMOUNT COST OF THE TRIP :
 
   //Select t_cost from
                  Trip_Details where Total_amt<>(Select Total_amt(t_cost) from Bill_details ); //

#3. WRITE A QUERY TO DISPLAY THE FEEDBACK ID OF THE CUSTOMER WITH HIGHEST RATING

  //Select Fbk_id from
         Feedback where ratings = (select Max(ratings) from Feedback); //

##4.LIST THE DRIVER_ID OF ALL THE DRIVER WHOSE FINE IS EITHER 1000 OR 500:

  // Select Driver_id from 
                        Violation_Records where  Fine in ('1000','500'); //

#5.LIST  ALL THE PASSENGER ID WHOSE DESTINATION IS EITHER JAYANAGAR OR YEDIYUR :

  // Select Pssenger_id from
                          Booking Options where destination in ('Jayanagar','Yediyur'); //






**************************************************THANK U*************************************************************************








   