
import { IUserToken } from "../models/user.model";
import { callSql } from "./mysql.utils";

export const validateUser = async(username:string, password:string):Promise <IUserToken> =>{ //sustituye temporalmente la base de datos

    const users = await callSql<IUserToken[]>('SELECT userId, username FROM users WHERE username = ? AND password=? LIMIT 1', [username, password]);//query para pedir el usuario a la base de datos

    if(users.length<=0){
        throw new Error ('User & pass not correct')
    }

    return users[0];
}
