import supabase from "../config/supabaseClient"
import {useEffect, useState } from "react"

//components
import CourseCard from "../components/CourseCard"

const Home = () => {
  const [fetchError, setFetchError] = useState(null)
  const [courses, setCourses] = useState(null)

  useEffect(() => {
    const fetchCourses = async () => {
      const {data, error} = await supabase
        .from('courses')
        .select()

      if (error) {
        setFetchError('Could not find any courses')
        setCourses(null)
        console.log(error)
      }
      if (data) {
        setCourses(data)
        setFetchError(null)
      }   
    }

    fetchCourses()

  }, []) 

  return (
    <div className="page home">
      <h3>Course List</h3>
      {fetchError && (<p>{fetchError}</p>)}
      {courses && (
        <div className="courses">
          {/*order-by button*/}
          <div className="course-grid">
          {courses.map(course => (
            <CourseCard key={course.course_id} course={course} />
          ))}
          </div>
        </div>
      )}
    </div>
  )
}

export default Home