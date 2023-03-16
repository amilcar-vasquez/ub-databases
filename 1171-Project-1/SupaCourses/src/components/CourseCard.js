const CourseCard = ({course}) =>
{
    return(
         <div className="course-card">
            <h3>{course.title}</h3>
            <div className="code">{course.code}</div>  
            <p>{course.course_description}</p>
         </div>
    )
}

export default CourseCard