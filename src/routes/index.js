const {Router} = require('express');
const router = Router();

const {getEstudiante, createEstudiante, deleteEstudiante, updateEstudiante, getEstudiantePorID} = require('../controllers/index.controller')

router.get('/Estudiante',getEstudiante);
router.post('/Estudiante',createEstudiante);
router.delete('/Estudiante/:id',deleteEstudiante);
router.put('/Estudiante/:id', updateEstudiante);
router.get('/Estudiante/:id', getEstudiantePorID);

module.exports = router;