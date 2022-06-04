const {Pool} = require('pg');

new Pool({
    
})

const getEstudiante = (req,res) => {
    res.send('Estudiante');
}


module.exports={
    getEstudiante
}