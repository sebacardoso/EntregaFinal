var express = require('express');
var router = express.Router();
var usuariosmodel = require('./../../models/usuariosmodel');
const { render } = require('../../app');

/* GET home page. */
router.get('/', function (req, res, next) {
    res.render('admin/login',
        { layout: 'admin/layout' });
});

router.get('/logout', function (req, res, next) {
    req.session.destroy();
    res.render('admin/login',
        { layout: 'admin/layout' });
});



router.post('/', async (req, res, next) => {
    try {
        var usuario = req.body.usuario; //captura info -Sebastian
        var password = req.body.password; // captur 1234

        var data = await usuariosmodel.getUserByUsernameAndPassword(usuario, password);

        if (data != undefined) {
            req.session.id_usuario = data.id;
            req.session.nombre = data.usuario;
            res.redirect('/admin/novedades');
        } else {
            res.render('admin/login', {
                layout: 'admin/layout',
                error: true
            });
        }
    } catch (error) {
        console.log(error);
    }
})

module.exports = router;
