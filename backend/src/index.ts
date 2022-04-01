
import express from 'express';//importar la librería de express.
import loginRouter from './routers/login.router';

const app = express();//creamos el servidor express.

app.use('/login', loginRouter);// generamos un endpoint llamado /login pero que lo va a gestionar el loginRouter.

app.get('/', (request, response)=>{ //añadir endpoint. 
    response.send('Hola Mundo'); //cuando alguien accede a la ruta raiz del endpoint se envía el mensaje. 
});

app.listen(3000, ()=>{ //el servidor se levanta en el puerto 3000
    console.log("Server connected: port 3000");//lanza el callback cuando se levanta el servidor.
});
