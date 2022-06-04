const {Pool} = require('pg');

const pool= new Pool({
    user: 'postgres',
    host: 'localhost',
    password: 'kali',
    database: 'tarea1',
    port: '5432'
    
})

const getEstudiante = (req,res) => {
    const response = await pool.query('SELECT * FROM estudiante inner join provincia on estudiante.cod_provincia = provincia.cod_provincia ORDER BY id ASC');
    res.status(200).json(response.rows);

}


module.exports={
    getEstudiante
}