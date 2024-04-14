

Tworzenie nowego publicznego repozytorium <br />
gh repo create pawcho6 --public --add-readme<br />
![image](https://github.com/MykhailoKrylov/pawcho6/assets/134151663/4e903094-3b1c-4d96-baa9-0b60cae9610b) <br />

Przesyłanie wymaganych plików do repozytorium <br />
git push -f origin main <br />
![image](https://github.com/MykhailoKrylov/pawcho6/assets/134151663/ca2c42a5-3ff0-42a0-99bb-ba882baf5258)<br />

Zmodyfikowałem istniejący plik Dockerfile<br />
![image](https://github.com/MykhailoKrylov/pawcho6/assets/134151663/caed7155-c9bb-4bca-95d8-e6a30d4394e5)


docker build --secret id=id_rsa,src=./id_rsa -t ghcr.io/mykhailokrylov/pawcho6 .
docker tag ghcr.io/mykhailokrylov/pawcho6:latest ghcr.io/mykhailokrylov/pawcho6:lab6

![image](https://github.com/MykhailoKrylov/pawcho6/assets/134151663/a753afd1-137f-4624-bafc-2b1edaeff853)<br />

Zbudowałem obraz<br />
set "DOCKER_BUILDKIT=true" && docker build -t ghcr.io/mykhailokrylov/pawcho6 .<br />
![image](https://github.com/MykhailoKrylov/pawcho6/assets/134151663/04473b62-fe77-4cd8-8f2c-ad7540b338c9)<br />
