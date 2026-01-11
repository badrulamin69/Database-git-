function form(event){
    event.preventDefault()
    let name = document.getElementById("name").value;
    let contact = document.getElementById("contact").value;
    let remarks = document.getElementById("remarks").value;

    let sex = document.querySelector("input[name='sex']:checked").value;
    let course = document.querySelectorAll("input[name='course']:checked");
    let location = document.getElementById("location").value;

    
    let courselist = [];
    for(let i=0; i<course.length; i++){
        courselist.push(course[i].value);
    }

    let result = 
    " Name " + name + "\n" +
    " Contact " + contact + "\n" +
    " Remarks " + remarks + "\n" +
    " Sex " + sex + "\n" +
    " Course " + courselist + "\n" +
    " Location " + location + "\n" ;

    window.open("","_blank").document.writeln("<pre>"+ result + "</pre>");
    
}

    document.getElementById("myForm").addEventListener("submit", form);