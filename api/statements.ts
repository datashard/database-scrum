export default {
    zutaten: "select z.*, zb.base, zb.alt from zutat z cross join zutatenbilder zb on z.id=zb.ref_zutat_id;",
    lieferanten: "select LAR.*, url.link from v_liefereanten_adressen_regionen LAR join lieferanturl url on LAR.lieferant_id=url.ref_lieferant_id;",
    rezepte: "select r.id, r.rezeptname, rb.base from rezept r join rezeptebilder rb on r.id=rb.ref_rezept_id;"
}