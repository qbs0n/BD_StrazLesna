$CLS
PROMPT Menu:
PROMPT 0. KONIEC
PROMPT 1. CREATE TABLES AND SEQUENCES (PREDEFINED)
PROMPT 2. INSERT INTO TABLES (PREDEFINED)
PROMPT 3. CREATE VIEWS (PREDEFINED)
PROMPT 4. CREATE CURSORS (PREDEFINED)
PROMPT 5. CREATE TRIGGERS (PREDEFINED)
PROMPT 6. DROP TABLES AND SEQUENCES
PROMPT 7. DROP VIEWS
PROMPT 8. DROP CURSORS
PROMPT 9. DROP TRIGGERS
PROMPT A. INSTRUKCJA DO WPISANIA
ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT 'WYBIERZ OPCJE 0-A: '
$CLS
PROMPT wybor = &wybor
@&wybor\main.sql &wybor
PROMPT 
PROMPT # Wcisnij ENTER #
PAUSE
@main.sql