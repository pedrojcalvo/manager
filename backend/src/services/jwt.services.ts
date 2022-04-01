
import { IUserToken } from "../models/user.model";
import jwt from "jsonwebtoken";

const SECRET_KEY = 'rhtbA36tQjjUX6PDVjTIClJ9zu30cRVq';

export const generateToken = (user:IUserToken) =>{//estamos generando un JSON con el Token que permitirá al navegador identificar al usuario.

    const jwtData = {
        username: user.username,//generando un token con el username de usuario.
        userId: user.userId //generando un token con el id de usuario.
    }

    return jwt.sign(jwtData, SECRET_KEY, {expiresIn:'1d', subject: user.username});// se genera el token firmado.
} 

export const validateToken = (token:string):boolean =>{ //función para verificar que el token es válido.
    try{
        jwt.verify(token, SECRET_KEY); 
        return true;
    }catch(err){
        return false;
    } 
}
