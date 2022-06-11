const {Pool} = require('pg');

const pool= new Pool({
    host: 'localhost',
    user: 'postgres',
    password: 'kali',
    database: 'tarea1',
    port: '5432'
    
});

const getEstudiante = async (req,res) => {
    const response = await pool.query('SELECT * FROM estudiante');
    res.status(200).json(response.rows);
};

const createEstudiante = async (req,res) => {
    const {name, apellido, cedula, cod_provincia}=req.body;

    const response = await pool.query('INSERT INTO estudiante (name, apellido, cedula, cod_provincia) VALUES ($1, $2, $3, $4)', [name, apellido, cedula, cod_provincia]);
    res.json({
        message: 'Estudiante Creado',
        body: {
            Estudiante: {name, apellido, cedula, cod_provincia}
        }
    })
};   

const deleteEstudiante = async (req,res)=>{
    const id = req.params.id;
    const response = await pool.query('DELETE FROM estudiante WHERE id = $1', [id]);
    res.json(` Estudiante ${id} Borrado correctamente`);
};

const updateEstudiante = async (req,res) => {
    const id = req.params.id;
    const{ name, apellido, cedula, cod_provincia } = req.body;
    const response = await pool.query('UPDATE estudiante SET name = $1, apellido = $2, cedula = $3, cod_provincia = $4 WHERE id = $5', [
        name, apellido, cedula, cod_provincia, id]);
    res.json('Estudiante actualizado');
}

const getEstudiantePorID = async (req, res) => {
    const id = req.params.id;
    const response = await pool.query('SELECT * FROM estudiante WHERE id = $1', [id]);
    const idProv = response.rows[0].cod_provincia;
    const res2 = await pool.query('SELECT name FROM provincia WHERE cod_provincia = $1', [idProv]);
    const respuestas = [response.rows, res2.rows];
    res.status(200).json(respuestas);
    
}

module.exports = {
    getEstudiante,
    createEstudiante,
    deleteEstudiante,
    updateEstudiante,
    getEstudiantePorID
}