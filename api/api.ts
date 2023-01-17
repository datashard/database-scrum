import * as mysql2 from "https://deno.land/x/mysql2/mod.ts";
import { Application, Router } from "https://deno.land/x/oak@v11.1.0/mod.ts";
import { oakCors } from "https://deno.land/x/cors/mod.ts";

const router = new Router();
const pool = mysql2.createPool({ host: "db", user: "admin", password: "admin", database: "krautundrueben", connectionLimit: 4 });
// helper
const query = async (sql) => (await pool.query(sql))[0]


router.get("/dsvgo/:kunde", async (context) => {
    let result = await query(`select * from v_dsvgo d where d.kunde_id=${context.params.kunde};`)
    context.response.body = result
})

router.get("/zutaten", async (context) => {
    context.response.body = await query("select * from zutat;")
})



const app = new Application();
app.use(oakCors({ origin: "*" }));
app.use(router.routes());
app.use(router.allowedMethods());

await app.listen({ port: 3000 });