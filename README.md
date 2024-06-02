# fastapi_new_way

# TODO rozbehej APP

## TODO testy
    healthchecky DB
    test zda jede web...

# TODO vystupy za pomoci pandas? ci nejakeho udelatka jako bylo na vysledky testu?

## TODO chrono na stahovani dat v kazdy cas... trebas o pulnoci

## TODO zalohovani a udrzba dat
Pro zálohování a synchronizaci dat mezi PostgreSQL a Redis vytvořte skript v jazyce Python, který bude provádět následující kroky:

    Kontrola časového razítka změny:
        Pomocí SQLAlchemy získejte nejnovější časové razítko (change_time) z tabulky StockBase v PostgreSQL.
        Také získejte nejnovější časové razítko z Redis.

    Porovnání časových razítek:
        Porovnejte časová razítka z PostgreSQL a Redis.
        Pokud jsou data v Redis novější než v PostgreSQL, aktualizujte PostgreSQL daty z Redis.
        Pokud jsou data v PostgreSQL novější než v Redis, aktualizujte Redis daty z PostgreSQL.

    Zálohování a obnova dat:
        V případě selhání jedné databáze a dostupnosti druhé:
            Pokud PostgreSQL selže a Redis je dostupný, získejte data z Redis a obnovte je do PostgreSQL.
            Pokud Redis selže a PostgreSQL je dostupný, získejte data z PostgreSQL a obnovte je do Redis.

    Periodické spouštění skriptu:
        Nastavte periodické spouštění skriptu pomocí plánovače úloh (např. pomocí cronu) nebo vytvořte službu, která bude běžet nepřetržitě a periodicky provádět kontrolu a aktualizaci dat.

    Integrace do aplikace FastAPI:
        Vložte skript do vaší aplikace FastAPI jako samostatný modul nebo službu.
        Zavolejte tento skript v rámci vaší aplikace, například pomocí vlastního endpointu API, který bude spouštět aktualizaci dat.

Tímto způsobem budete mít efektivní zálohování a synchronizaci dat mezi PostgreSQL a Redis, což zajistí konzistenci a dostupnost vašich datových úložišť.