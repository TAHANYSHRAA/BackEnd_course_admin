const { createDatabaseConnection, DB_NAME } = require('../database/config');
function AddNewCourses(title, dateBegin, dateEnd, locations, range_weight, desc,trainerName,id_ngo ,callback) {
    let sql = `INSERT INTO ${DB_NAME}.courses (title,start_date,end_datel,location,number_of_seats,description,trainer,id_ngo ) VALUES(
'${title}','${dateBegin}','${dateEnd}','${locations}','${range_weight}','${desc}','${trainerName}','${id_ngo}')`;

    createDatabaseConnection((connectError, connection) => {
        if (connectError) {
            callback(connectError, null);
        } else {
            connection.query(sql, (error, result) => {
                if (callback) {
                    callback(error, result);
                }

                connection.end();
            });
        }
    });
}

function getAllCourses(callback) {
    let sql = `SELECT * from ${DB_NAME}.courses`;

    createDatabaseConnection((connectError, connection) => {
        if (connectError) {
            callback(connectError, null);
        } else {
            connection.query(sql, (error, result) => {
                if (callback) {
                    callback(error, result);
                }

                connection.end();
            });
        }
    });
}
function deleteCourse(id,id_ngo, callback) {
    let sql = `DELETE FROM ${DB_NAME}.courses WHERE id_ngo = ${id_ngo} and ${DB_NAME}.courses.id=${id}`;

    createDatabaseConnection((connectError, connection) => {
        if (connectError) {
            callback(connectError, null);
        } else {
            connection.query(sql, (error, result) => {
                if (callback) {
                    callback(error, result);
                }

                connection.end();
            });
        }
    });
}
function getALLtrainer(id_ngo,callback){

    sql = `SELECT * FROM ${DB_NAME}.trainers where id_ngo= `+id_ngo+`;`;


    createDatabaseConnection((connectError, connection) => {
        if (connectError) {
            callback(connectError, null);
        } else {
            connection.query(sql, (error, result) => {
                if (callback) {
                    callback(error, result);
                }

                connection.end();
            });
        }
    });

}
function updataInfromationCOurses(id,title, dateBegin, dateEnd, locations, range_weight, desc,callback){
    let sql=` UPDATE  ${DB_NAME}.courses SET title='${title}', start_date='${dateBegin}',end_datel='${dateEnd}',location='${locations}',number_of_seats='${range_weight}',description ='${desc}' WHERE id= `+id+``;
        createDatabaseConnection((connectError, connection) => {
            if (connectError) {
                callback(connectError, null);
            } else {
                connection.query(sql, (error, result) => {
                    if (callback) {
                        callback(error, result);
                    }
    
                    connection.end();
                });
            }
        });
}
function getOneCourse(id,callback){
    let sql = ` select e.id  , e.title  , e.description ,e.start_date , e.location,e.number_of_seats,e.trainer,e.end_datel,a.name  from courses e   join trainers a on e.trainer=a.id join ngos o on e.id_ngo=o.id  where e.id= `+id+` `;
    createDatabaseConnection((connectError, connection) => {
        if (connectError) {
            callback(connectError, null);
        } else {
            connection.query(sql, (error, result) => {
                if (callback) {
                    callback(error, result);
                }

                connection.end();
            });
        }
    });
}
function SearchCourse(title,callback){
    let sql=`SELECT * FROM ${DB_NAME}.courses WHERE title LIKE '${title}' `;
     createDatabaseConnection((connectError, connection) => {
         if (connectError) {
            console.log(connectError);
             callback(connectError, null);
         } else {
             connection.query(sql, (error, result) => {

                 if (callback) {
                     console.log(result);
                     callback(error,result);
                 }
                 connection.end();
             });
         }
     });
 
 }
 function getAllCoursesNgo(id_ngo, callback) {
   const sql = `select e.id  , e.title  , e.description , a.name  from courses e   join trainers a on e.trainer=a.id 
   join ngos o on e.id_ngo=o.id where e.id_ngo= `+id_ngo+`;`;
    createDatabaseConnection((connectError, connection) => {
        if (connectError) {
            callback(connectError, null);
        } else {
            connection.query(sql, (error, result) => {
                if (callback) {
                    callback(error,result);
                }
                connection.end();
            });
        }
    });
}
function GetRegisteredTrainees(callback){
    let sql=`SELECT * FROM ${DB_NAME}.courses INNER JOIN ${DB_NAME}.courses_trainee on ${DB_NAME}.courses.id= ${DB_NAME}.courses_trainee.id_course INNER JOIN ${DB_NAME}.trainee on ${DB_NAME}.courses_trainee.id_trainee=${DB_NAME}.trainee.id;`
    createDatabaseConnection((connectError, connection) => {
        if (connectError) {
            callback(connectError, null);
        } else {
            connection.query(sql, (error, result) => {
                if (callback) {
                    callback(error,result);
                }
                connection.end();
            });
        }
    });
}
function registerTrainee(id_course,callback){
    const sql= `SELECT * FROM ${DB_NAME}.courses INNER JOIN ${DB_NAME}.courses_trainee on ${DB_NAME}.courses.id= ${DB_NAME}.courses_trainee.id_course INNER JOIN ${DB_NAME}.trainee on ${DB_NAME}.courses_trainee.id_trainee=${DB_NAME}.trainee.id WHERE ngos_courses.courses.id ='${id_course}';`
    createDatabaseConnection((connectError, connection) => {
        if (connectError) {
            callback(connectError, null);
        } else {
            connection.query(sql, (error, result) => {
                if (callback) {
                    callback(error,result);
                }
                connection.end();
            });
        }
    });
}

function UNRegisterTrainee(id_trainee,callback){
    const sql= `DELETE FROM ${DB_NAME}.courses_trainee WHERE id_trainee in (
        SELECT * FROM ${DB_NAME}.courses INNER JOIN ${DB_NAME}.courses_trainee 
        on ${DB_NAME}.courses.id= ${DB_NAME}.courses_trainee.id_course 
        INNER JOIN ${DB_NAME}.trainee 
        on ${DB_NAME}.courses_trainee.id_trainee=${DB_NAME}.trainee.id 
        WHERE ngos_courses.courses_trainee.id_trainee ='${id_trainee}
    ) ;`
    createDatabaseConnection((connectError, connection) => {
        if (connectError) {
            callback(connectError, null);
        } else {
            connection.query(sql, (error, result) => {
                if (callback) {
                    callback(error,result);
                }
                connection.end();
            });
        }
    });
}

module.exports = {
    AddNewCourses, getAllCourses, deleteCourse,getALLtrainer,updataInfromationCOurses,getOneCourse,SearchCourse,getAllCoursesNgo,registerTrainee,UNRegisterTrainee,GetRegisteredTrainees
};