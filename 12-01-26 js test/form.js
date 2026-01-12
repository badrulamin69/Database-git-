function form(event){
    event.preventDefault()

    let name = document.getElementById("name").value;
    let contact = document.getElementById("contact").value;
    let remarks = document.getElementById("remarks").value;
    let location = document.getElementById("location").value;

    let sex = document.querySelector("input[name='sex']:checked").value;
    let sex = document.querySelector("input[name='sex']:checked");

    let courselist = [];
    for(let i=0; i<course.lenght; i++){
        courselist.push(course[i].value);
    }


}