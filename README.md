# SPRINT 2

# Disseny base de dades
---

## Taula: `User`

Taula que emmagatzema informació dels estudiants.

| Columna       | Tipus            | Descripció                                          |
|---------------|------------------|-----------------------------------------------------|
| `id`          | `INT`            | Clau primària, identificador únic de l’estudiant.   |
| `name`        | `VARCHAR(255)`   | Nom de l’estudiant.                                 |
| `lastName`    | `VARCHAR(255)`   | Cognom de l’estudiant.                              |
| `class_group` | `VARCHAR(50)`    | Grup o classe a què pertany l’estudiant.            |
| `email`       | `VARCHAR(255)`   | Correu electrònic de l’estudiant (opcional).        |
| `phone`       | `BIGINT`         | Número de telèfon de l’estudiant (opcional).        |

---

## Taula: `Teacher`

Taula que emmagatzema informació dels professors.

| Columna       | Tipus            | Descripció                                          |
|---------------|------------------|-----------------------------------------------------|
| `id`          | `INT`            | Clau primària, identificador únic del professor.    |
| `name`        | `VARCHAR(255)`   | Nom del professor.                                  |
| `lastName`    | `VARCHAR(255)`   | Cognom del professor.                               |
| `email`       | `VARCHAR(255)`   | Correu electrònic del professor (opcional).         |
| `phone`       | `BIGINT`         | Número de telèfon del professor (opcional).         |

---

## Taula: `Subject`

Taula que emmagatzema informació sobre les assignatures.

| Columna       | Tipus            | Descripció                                          |
|---------------|------------------|-----------------------------------------------------|
| `id`          | `INT`            | Clau primària, identificador únic de l’assignatura. |
| `name`        | `VARCHAR(255)`   | Nom de l’assignatura.                               |

---

## Taula: `Assistance`

Taula que emmagatzema els registres d’assistència dels estudiants, incloent-hi l'estat d'assistència, la data i la relació amb els estudiants, professors i assignatures.

| Columna            | Tipus            | Descripció                                               |
|--------------------|------------------|----------------------------------------------------------|
| `id`               | `INT`            | Clau primària, identificador únic del registre d’assistència. |
| `userID`           | `INT`            | Clau forana que fa referència a `id` a la taula `User`.         |
| `teacherID`        | `INT`            | Clau forana que fa referència a `id` a la taula `Teacher`.      |
| `subjectID`        | `INT`            | Clau forana que fa referència a `id` a la taula `Subject`.      |
| `attendance_status`| `ENUM`           | Estat d’assistència de l’estudiant. Valors possibles: 'present', 'absent', 'justified'. |
| `date`             | `DATETIME`       | Data i hora del registre d’assistència. S’assigna automàticament la data actual. |

---

## Relacions entre les Taules

- La taula `Assistance` conté claus foranes (`userID`, `teacherID`, `subjectID`) que creen relacions amb les taules `User`, `Teacher` i `Subject`, respectivament.
- Aquestes relacions permeten registrar l’assistència de cada estudiant en una assignatura específica, impartida per un professor específic, juntament amb l’estat d’assistència i la data del registre.

