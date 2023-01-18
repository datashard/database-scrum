const API_DOMAIN = 'http://localhost:81'

let zutaten_conatiner = document.querySelector('.zutaten__card_container')
function createZutat({ zutat, kohlenhydrate, protein, kalorien, base, alt }) {
    return `
    <div class="zutaten__card">
        <img class="zutaten__card_img" src="data:image/jpg;base64,${base}" alt="${zutat}">
        <p class="zutat__name">${zutat}</p>
        <p class="zutat__nutrition">Durchschnittliche Nährwerte:</p>
        <table class="zutaten__nutrition_liste">
            <tbody>
                <tr>
                    <th class="zutaten__nutrition_liste_name">Kohlenhydrate:</th>
                    <td class="zutaten__nutrition_liste_einheit">${kohlenhydrate}kcal</td>
                </tr>
                <tr>
                    <th class="zutaten__nutrition_liste_name">Proteine:</th>
                    <td class="zutaten__nutrition_liste_einheit">${protein}g</td>
                </tr>
                <tr>
                    <th class="zutaten__nutrition_liste_name">Kalorien:</th>
                    <td class="zutaten__nutrition_liste_einheit">${kalorien}g</td>
                </tr>
            </tbody>
        </table>
    </div>
    `
}

function createLieferant({ name, adresse, url }) {
    return `<p class="lieferant__name">${name}<br/><span class="lieferant__adresse">${adresse}</span></p>`
}

function createRezept({ rezept, base, kategorie }) {
    return `
            <div class="rezept__card">
                <img class="rezept__card_img" src="data:image/jpg;base64,${base}" alt="omnivore">
                <div class="rezept__text_container">
                    <h4 class="rezept__text">${rezept}</h4>
                    <p class="rezept__kategorie">${kategorie}</p>
                    <a href="#" class="button">Jetzt Bestellen</a>
                </div>
            </div>
    `
}

async function getAllZutaten() {
    const zutaten = await $.ajax({
        type: 'GET',
        url: `${API_DOMAIN}/zutaten`,
        crossDomain: true,
    })
    zutaten.forEach((zutat) => {
        $('.zutaten__card_container').append(
            createZutat({
                zutat: zutat.bezeichnung,
                kalorien: parseFloat(zutat.kalorien).toFixed(1),
                kohlenhydrate: parseFloat(zutat.kohlenhydrate).toFixed(1),
                protein: parseFloat(zutat.protein).toFixed(1),
                base: zutat.base,
            }),
        )
    })
}

async function getAllLieferanten() {
    const lieferanten = await $.ajax({
        type: 'GET',
        url: `${API_DOMAIN}/lieferanten`,
        crossDomain: true,
    })

    lieferanten.forEach((l) => {
        $(".lieferanten__container_abschnitt").append(
            createLieferant({
                name: l.lieferantenname,
                adresse: `${l.strasse} ${l.hausnummer}, ${l.plz} ${l.ort}`
            }),
        )
    })
}
async function getAllRezepte() {
    const rezepte = await $.ajax({
        type: 'GET',
        url: `${API_DOMAIN}/rezepte`,
        crossDomain: true,
    })

    console.log(rezepte)

    rezepte.forEach((r) => {
        $(".rezepte__card_container").append(
            createRezept({
                rezept: r.rezeptname,
                base: r.base,
                kategorie: r.kategorie
            }),
        )
    })
}

getAllRezepte();
getAllZutaten();
getAllLieferanten();