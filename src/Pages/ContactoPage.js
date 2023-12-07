import '../styles/contacto.css';
import { useState } from 'react';
import axios from 'axios';


const ContactoPage = (props) => {

  const initialForm = {
    nombre: '',
    apellido: '',
    telefono: '',
    mensaje: '',
  }

  const [sending, setSending] = useState(false);
  const [msg, setMsg] = useState('');
  const [formData, setFormData] = useState(initialForm);

  const handleChange = e => {
    const { name, value } = e.target;
    setFormData(oldData => ({
      ...oldData,
      [name]: value //forma dinamica
    }));
  }

  const handleSubmit = async e => {
    e.preventDefault();
    setMsg('');
    setSending(true)
    const response = await axios.post('http://localhost:3000/api/contacto', formData);
    setSending(false);
    setMsg(response.data.message);
    if (response.data.error === false) {
      setFormData(initialForm)
    }
  }



  return (
    <main className="holder-contacto">
      <div className="formulario-container">
        <h2>Contacto rápido</h2>
        <form action="/contacto" method="post" onSubmit={handleSubmit} className="formulario">
          <p>
            <label For="nombre">Nombre</label>
            <input type="text" name="nombre" value={formData.nombre} onChange={handleChange} />
          </p>
          <p>
            <label lFor="email">Email</label>
            <input type="text" name="email" value={formData.email} onChange={handleChange} />
          </p>
          <p>
            <label For="telefono">Telefono</label>
            <input type="text" name="telefono" value={formData.telefono} onChange={handleChange} />
          </p>
          <p>
            <label For="mensaje">Mensaje</label>
            <textarea name="mensaje" value={formData.mensaje} onChange={handleChange}></textarea>
          </p>
          <p className="acciones">
            <input type="submit" value="Enviar" />
          </p>

          {sending ? <p>Enviando...</p> : null}
          {msg ? <p>{msg}</p> : null}
          

        </form>
      </div>

      <div className="datos">
        <h2>Otras vias de comunicacion</h2>
        <p>Puedes contactarte con nosotros en los siguientes medios</p>
        <ul>
          <li>Instagram</li>
          <li>Telefono xxxxxxxxx</li>
          <li>Email: Cafeapokito@gmail.com</li>
          <li>Facebook:</li>
          <li>Twitter:</li>
        </ul>
      </div>
    </main>
  );
};


export default ContactoPage; 