const ProgramCard = ({programs}) =>
{
    return(
         <div className="course-card">
            <h3>{programs.name}</h3>
            <div className="code">{programs.program_id}</div>  
            <p>{programs.program_description}</p>
         </div>
    )
}

export default ProgramCard