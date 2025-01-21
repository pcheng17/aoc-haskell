watch YEAR DAY:
    watchexec -c -r -w ./{{YEAR}} "ghc ./{{YEAR}}/{{DAY}}/main.hs -o ./{{YEAR}}/{{DAY}}/main.exe && ./{{YEAR}}/{{DAY}}/main.exe"
