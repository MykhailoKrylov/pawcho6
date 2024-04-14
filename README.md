

Tworzenie nowego publicznego repozytorium <br />
_gh repo create pawcho6 --public --add-readme<br />_
![image](https://github.com/MykhailoKrylov/pawcho6/assets/134151663/4e903094-3b1c-4d96-baa9-0b60cae9610b) <br />

Przesyłanie wymaganych plików do repozytorium <br />
_git push -f origin main <br />_
![image](https://github.com/MykhailoKrylov/pawcho6/assets/134151663/ca2c42a5-3ff0-42a0-99bb-ba882baf5258)<br />

Zmodyfikowałem istniejący plik Dockerfile<br />
![image](https://github.com/MykhailoKrylov/pawcho6/assets/134151663/caed7155-c9bb-4bca-95d8-e6a30d4394e5)<br />


Zbudowałem obraz<br />
_set "DOCKER_BUILDKIT=true" && docker build --secret id=id_rsa,src=./id_rsa -t ghcr.io/mykhailokrylov/pawcho6 ._
![image](https://github.com/MykhailoKrylov/pawcho6/assets/134151663/7a3b8d7b-a54f-40e1-ab00-498b25f86c94)<br />


Dodałem tag i zalogowałem się do ghcr.io<br />
_docker tag ghcr.io/mykhailokrylov/pawcho6:latest ghcr.io/mykhailokrylov/pawcho6:lab6<br />
docker login ghcr.io<br />_
![image](https://github.com/MykhailoKrylov/pawcho6/assets/134151663/6ec580c7-3f52-47e6-a015-a4de75ccdb86)<br />

Przesłałem go do mojego repozytorium Github<br />
_docker push ghcr.io/mykhailokrylov/pawcho6:lab6<br />_
![image](https://github.com/MykhailoKrylov/pawcho6/assets/134151663/7e0653ad-0caf-48ba-bc2e-5bd32036a873)<br />

Link do repozytorium z package.json oraz index.js<br />
https://github.com/MykhailoKrylov/lab5.2.git

