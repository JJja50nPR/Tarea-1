const {Router} = require('express');
const router = Router();

const {getEstudiante} = require('../controllers/index.controller')

router.get('/Estudiante',getEstudiante)

module.exports = router;