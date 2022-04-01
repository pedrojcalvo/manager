
import mysql from 'mysql';

const connection = mysql.createConnection({ //datos de conexión a la BD
    host: "localhost",
    database: "gisbetBanyo_DB",
    user: "administrador",
    password: "provisional"
});

export const callSql = <T> (sql: string, parameters: any[]): Promise<T> =>{ //pasar sql para petición a BD y me devuelve el resultado con el tipo que le digamos
    return new Promise( (resolve, reject)=>{ //crear una promesa que espera la respuesta de la base de datos
        connection.connect((err) =>{ //conectar con la BD
        
            if(err){    //si hjay error en la conexión devolvemos error
                reject(err);
            } 
            
            connection.query(sql, parameters, (err, result) =>{ //pasamos la query a la base de datos
            
                if(err){ //error devolvemos el error
                    reject(err);
                }
                resolve(result); //recibimos la respuesta.
            });
        });
    });

}
