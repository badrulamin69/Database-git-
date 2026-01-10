function sendData(event){
    event.preventDefault();

    let name=document.getElementById("name").value;
    let email=document.getElementById("email").value;
    let contact=document.getElementById("contact").value;
    let address=document.getElementById("address").value;

    let sex=document.querySelector('input[name="sex"]:checked');
    
    let course=document.querySelectorAll('input[name="Courses"]:checked');
    let list=[];
    for(let i=0; i<course.length; i++){
        // list.push(course[i].value);

        list[i]=course[i].value;  
    } 

    let result = 
    "Name : " + name + "\n" +
     "Email : " + email + "\n" +
     "Contact : " + contact + "\n" +
     "Address : " + address + "\n" +
     "Sex : " + sex.value + "\n" +
     "Course : " + list + "\n";

     window.open(" ", "_blank").document.writeln("<pre>" + result + "</pre>");
}

document.getElementById("myform").addEventListener("submit", sendData);