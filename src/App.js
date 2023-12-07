import { BrowserRouter, Routes, Route } from "react-router-dom";

import Header from "./componentes/layout/Header";
import Nav from "./componentes/layout/Nav";
import Footer from "./componentes/layout/Footer";
import './App.css';

import ContactoPage from "./Pages/ContactoPage";
import HomePage from "./Pages/HomePage";
import NosotrosPage from "./Pages/NosotrosPage";
import NovedadesPage from "./Pages/NovedadesPage";
import ProductosPage from "./Pages/ProductosPage";
import GaleriaPage from "./Pages/GaleriaPage";


function App() {
  return (
    <div className="App">

      <Header />
      <BrowserRouter>
        <Nav />
        <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/contacto" element={<ContactoPage />} />
          <Route path="/nosotros" element={<NosotrosPage />} />
          <Route path="/novedades" element={<NovedadesPage />} />
          <Route path="/productos" element={<ProductosPage />} />
          <Route path="/galeria" element={<GaleriaPage />} />
          
          


        </Routes>
      </BrowserRouter>
      <Footer />


    </div>
  );
}

export default App;
