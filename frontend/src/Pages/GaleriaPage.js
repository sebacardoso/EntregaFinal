import "../styles/galeria.css"

const GaleriaPage = (props) => {
    return (
        <main className="holder">



            <div className="carrusel">
                <div className="slide">
                    <img src="fotos_accesorios/accesorio1.jpg" alt="Imagen 1" />
                </div>
                <div className="slide">
                    <img src="fotos_accesorios/accesorio2.jpg" alt="Imagen 2" />
                </div>
                <div className="slide">
                    <img src="fotos_accesorios/accesorio3.jpg" alt="Imagen 3" />
                </div>
                <div className="slide">
                    <img src="fotos_accesorios/accesorio4.jpg" alt="Imagen 4" />
                </div>
                <div className="slide">
                    <img src="fotos_accesorios/accesorio5.jpg" alt="Imagen 5" />
                </div>
                <div className="slide">
                    <img src="fotos_accesorios/accesorio6.jpg" alt="Imagen 6" />
                </div>
                <div className="slide">
                    <img src="fotos_accesorios/accesorio7.jpg" alt="Imagen 7" />
                </div>

            </div>
        </main>

    );
}

export default GaleriaPage; 