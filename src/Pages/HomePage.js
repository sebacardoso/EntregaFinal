import '../styles/home.css' ;

const HomePage = (props) => {
    return (
        <main className="holder">

        <div className="homeimg">
            <img src="fotos_cafe/Espresso.jpg" alt="cafebanner" />
        </div>

        <div className="columnas">
            <div className="bienvenidos">
                <h2>Bienvenidos</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, eligendi quos? Praesentium
                    molestiae impedit modi ut. Ipsa modi est iusto officiis nostrum, cum unde natus aliquam, facilis
                    consectetur quas in?</p>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quasi dicta, consectetur possimus cum sint
                    voluptas aspernatur atque in asperiores, consequatur ipsa voluptates odio rem porro quos soluta
                    dignissimos enim dolorem!</p>

            </div>
            <div className="testimonios">
                <h2>Testimonios</h2>
                <div className="testimonio">
                    <span className="cita">Volveria sin dudas</span>
                    <span className="autor">Estefania De Luca - Madrid</span>
                </div>
            </div>
        </div>
        </main>
 
    ); }
 export default HomePage; 