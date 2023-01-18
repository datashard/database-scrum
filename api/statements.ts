export default {
    zutaten: "select z.*, zb.base, zb.alt from zutat z cross join zutatenbilder zb on z.id=zb.ref_zutat_id;"
}