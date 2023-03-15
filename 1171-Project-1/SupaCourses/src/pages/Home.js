import supabase from "../config/supabaseClient"
import {useEffect, useState } from "react"

const Home = () => {
  const [fetchError, setFetchError] = useState(null)
  const [courses, setCourses] = useState(null)

  useEffect(() => {
    const fetchCourses = async () => {
      const {data, error} = await supabase
        .from('courses')
        .select('course_id, title')

      if (error) {
        setFetchError('Could not find any courses')
      }
      if (data) {
        setCourses(data)
      }   
    }

    fetchCourses()

  }, []) 

  return (
    <div className="Welcome">
      <h3>Course List</h3>
      {fetchError && (<p>{fetchError}</p>)}
      {courses && (
        <div>
          {courses.map(course => (
            <p>{course.title}</p>
          ))}
        </div>
      )}
    </div>
  )
}

export default Home