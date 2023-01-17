




// // console.log('starting')
// // const express = require('express')
// var mysql = require('mysql');

// try {
//     var pool = mysql.createPool("mysql://root:root@db:3306/krautundrueben");
// } catch (error) {
//     console.error(error)
// }

// // const app = express()

// pool.query('select * from v_dsvgo d where d.kunde_id = 2007;', (error, results, fields) => {
//     if (error) return console.error(error)
//     return console.log({ results, fields })
// })

// // app.get('/', async function (req, res) {
// //     return pool.query('select * from v_dsvgo d where d.kunde_id = 2007;', (error, results, fields) => {
// //         if (error) return res.json(error)
// //         return res.json({ results, fields })
// //     })
// // })

// // app.listen(3001);