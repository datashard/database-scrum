export default {
    zutaten: "select z.*, zb.base, zb.alt from zutat z cross join zutatenbilder zb on z.ref_zutatenbilder_id=zb.id",
    lieferanten: "select * from v_liefereanten_adressen_regionen;",
    rezepte: "select r.id, r.rezeptname, rb.base from rezept r join rezeptebilder rb on rb.id=r.ref_rezeptebilder_id;"
}