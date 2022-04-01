
import express from 'express';
import { validateUser } from '../database/user.db';
import { generateToken } from '../services/jwt.services';

const loginRouter = express.Router();//creamos un módulo de express

loginRouter.get('/', async(request:express.Request, response) => { // respuesta que se enviará cuando se acceda a /login
    const {username, password} = request.query;//desectructuramos para sacar la información.
    if(!username || !password){
        throw new Error('Username o Password no introducidos.')
    }
    const user = await validateUser(username as string, password as string); //validamos el usuario y forzamos a que sea un string

    response.json(generateToken(user));
});

loginRouter.get('/username', (request, response) => { // respuesta que se enviará cuando se acceda a /login/username
    response.send('Pedro');
});

export default loginRouter;//exportamos el loginRouter.
