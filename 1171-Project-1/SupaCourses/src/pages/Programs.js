import supabase from "../config/supabaseClient"
import {useEffect, useState } from "react"

//components
import ProgramCard from "../components/ProgramCard"

const Programs = () => {
  const [fetchError, setFetchError] = useState(null)
  const [Programs, setPrograms] = useState(null)

  useEffect(() => {
    const fetchPrograms = async () => {
      const {data, error} = await supabase
        .from('programs')
        .select()

      if (error) {
        setFetchError('Could not find any Programs')
        setPrograms(null)
        console.log(error)
      }
      if (data) {
        setPrograms(data)
        setFetchError(null)
      }   
    }

    fetchPrograms()

  }, []) 

  return (
    <div className="page">
      <h3>Programs Offered</h3>
      {fetchError && (<p>{fetchError}</p>)}
      {Programs && (
        <div className="Programs">
          {/*order-by button*/}
          <div className="course-grid">
          {Programs.map(programs => (
            <ProgramCard key={programs.program_id} programs={programs} />
          ))}
          </div>
        </div>
      )}
    </div>
  )
}

export default Programs