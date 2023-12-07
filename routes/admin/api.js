var express = require('express');
var router = express.Router();
var novedadesModel = require('./../models/novedadesmodel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', function(req, res, next) {
  res.redirect('/admin/login');
});

router.get('/novedades' , async function(req, res, next) {
    let novedades = await novedadesModel.getNovedades();

    novedades = novedades.map(novedades => {
        if (novedades.img_id) {
            const imagen = cloudinary.url(novedades.img_id, {
                width: 960,
                height: 200,
                crop: 'fill',
            });
            return {
                ...novedades,
                imagen
            }
        } else {
            return {
                ...novedades,
                imagen: ''
            }

        }
    })

    res.json(novedades);
});

module.exports = router;
