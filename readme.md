# NMap tesing

## 1. Host teh application on render

- Push the application to github using the below command

- Ascertain you have `gh` installed on your system. If not, install it using the following command:

**windows**

```bash
choco install gh
```

**Linux and Mac**
```bash
brew install gh
```

- Run teh below command to push the application to github

**Windows only**

```bash
git init; gh repo create nmap-ftp-testing --source=. --public --remote=origin; git add .; git commit -m "Initial commit"; git push origin master
```

**Linux and Mac**

```bash
git init && gh repo create nmap-ftp-testing --source=. --public --remote=origin && git add . && git commit -m "Initial commit" && git push origin master
```

## 2. Create a new render project (Web Service)

- Create a new project on render and select the repository you just created. Make sure to select `docker` as the environment.

- Click on the `Deploy` button to deploy the application.

- Once the application is deployed, click on the link to view the application.

## 3. Testing the application

- Get the url of the application from the render dashboard.
- Open a terminal and run the below command to test the application.

```bash
nmap -Pn -p 21 -v <url>
```

- Replace `<url>` with the url of the application, don't include the `https://` part of the url. You should see the port 21 filtered.

Try downloading the file using the below command

```bash
wget ftp://<url>/download/some_text.txt
```
