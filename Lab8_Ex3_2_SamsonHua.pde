class Student{
  int id;
  float grade;
  
  Student(){
  id = 0;
  grade = 0;
  }
  
  Student(int i, float g){
  id = i;
  grade = g;
  }
  
  
  
}

void PopulateArray(Student [] a){
  for(int i = 0; i<a.length; i++){
    a[i].id = i + 1;
    a[i].grade = random(40,100);
    println("Student ID: " + a[i].id + " Grade: " + a[i].grade);
    
  }
  
  
  
  
}
float Calculate_Average(Student [] a){
  float average = 0;
  
  for(int i = 0; i<a.length; i++){
    
    average += a[i].grade;
    
  }
  
  average /= a.length;
  
  return average;
}






void setup(){
  
  Student [] array = new Student [10];
  
  for(int i = 0; i < array.length; i++){
    array[i] = new Student();
  }
  
  PopulateArray(array);
  
  float averagegrade = Calculate_Average(array);
  
  println("The Average Grade is " + averagegrade);
  
  
  
  
}
