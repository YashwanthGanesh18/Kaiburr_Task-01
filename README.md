# Kaiburr_Task-01
This project is a Task Management API that allows users to create, search, delete, and execute tasks. 
# 🛠️ Task Management API (Java + Spring Boot + MongoDB)

## 📝 Features
- Create, search, and delete tasks.
- Store task execution history.
- Validate shell commands for security.
- Use MongoDB as the database.
- Expose REST API endpoints.
- Test with Postman/cURL.

---

# 📂 Project Structure
```
📚 task-management-api
├── 📁 src
│   ├── 📁 main
│   │   ├── 📁 java/com/example/taskmanagement
│   │   │   ├── 📁 controller   # API Controllers
│   │   │   ├── 📁 model        # Data Models
│   │   │   ├── 📁 repository   # Database Repositories
│   │   │   ├── 📁 service      # Business Logic
│   │   │   └── Application.java # Main Entry Point
│   │   ├── 📁 resources
│   │   │   └── application.properties # Spring Config
├── 📁 test                     # Unit Tests
├── 📄 pom.xml (Maven) or build.gradle (Gradle)
├── 📄 Dockerfile
└── 📄 README.md
```

---

## 🔧 Step 1: Prerequisites
Make sure you have installed:
- ✅ Java 21+(Eclipse Temurin recommended)
- ✅ Spring Boot
- ✅ MongoDB (Local or Cloud)
- ✅ Postman or cURL(for API testing)

---

##🚀 Step 2: Clone the Repository
```sh
git clone https://github.com/YOUR_GITHUB_USERNAME/task-management-api.git
cd task-management-api
```

---

## ⚙️ Step 3: Configure MongoDB
### 🔹 Option 1: Run MongoDB Locally
Start MongoDB on your machine:
```sh
mongod --dbpath /data/db
```
OR  
###  Option 2: Use MongoDB Atlas (Cloud)
- Create a *ongoDB Atlas account.
- Get the Connection string.
- Update `application.properties`:

```properties
spring.data.mongodb.uri=mongodb+srv://<username>:<password>@cluster0.mongodb.net/tasksdb
```

---

## 🛠️ Step 4: Setup the Project in IntelliJ
1. Open IntelliJ IDEA.
2. Import the project as a Gradle or Maven project.
3. Ensure JDK 21 is set (File → Project Structure → SDKs).
4. Install dependencies using:
   ```sh
   ./gradlew build   # Gradle
   mvn clean install # Maven
   ```
5. *un the application:
   ```sh
   ./gradlew bootRun
   ```

---

## 📝 Step 5: API Endpoints
### 1⃣ Get All Tasks
```sh
curl -X GET http://localhost:8080/tasks
```

### 2⃣ Get Task by ID
```sh
curl -X GET http://localhost:8080/tasks/123
```

### 3⃣ Create a Task
```sh
curl -X POST http://localhost:8080/tasks \
     -H "Content-Type: application/json" \
     -d '{
           "id": "123",
           "name": "Print Hello",
           "owner": "John Smith",
           "command": "echo Hello World again!",
           "taskExecutions": []
         }'
```

### 4⃣ Delete a Task
```sh
curl -X DELETE http://localhost:8080/tasks/123
```

---

## 📝 Step 6: Running the API in Postman
1. Open Postman.
2. Create a new request and select:
   - **GET** → `http://localhost:8080/tasks`
   - **POST** → `http://localhost:8080/tasks` (add JSON body).
   - **DELETE** → `http://localhost:8080/tasks/{id}`.
3. Click Sendand verify the response.

---

## 🐋 Step 7: Dockerizing the Application
### 1️⃣ Create a Dockerfile
```dockerfile
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY target/task-management.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
```

### 2️⃣ Build the Docker Image
```sh
docker build -t task-management-api .
```

### 3️⃣ Run the Docker Container
```sh
docker run -p 8080:8080 task-management-api
```
Now test it with:
```sh
curl -X GET http://localhost:8080/tasks
```

---

## 🌐 Step 8: Deploy MongoDB in Docker
### 1️⃣ Run MongoDB Container
```sh
docker run -d --name mongo -p 27017:27017 mongo
```
### 2️⃣ Update `application.properties`
```properties
spring.data.mongodb.uri=mongodb://mongo:27017/tasksdb
```
### 3️⃣ Restart the Spring Boot App
```sh
docker stop task-management-api
docker rm task-management-api
docker run -p 8080:8080 --name task-management-api task-management-api
```
---

## 📄 License
This project is Licensed.

---

## 🌟 Contributing
Want to improve this project? Feel free to submit PRs! 😊

---
this are the ouput Screenshot from Postman:


![json](https://github.com/user-attachments/assets/4fa7a75f-50b1-4e39-b7b2-109ec68884e1)
![Screenshot 2025-02-28 215442](https://github.com/user-attachments/assets/ace5e099-96bb-4c15-b013-e82ac76a358c)
