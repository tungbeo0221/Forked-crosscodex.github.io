# Setting up Database Credentials for Development

To ensure smooth development workflow, it's important for each developer to configure their own local database credentials. This README outlines the steps required to set up the database credentials using a `.env` file based on the provided `.env.example`.

## Instructions

1. **Clone the Repository**: First, clone the repository to your local machine if you haven't already done so.

    ```bash
    git clone <repository_url>
    ```

2. **Navigate to the Project Directory**: Change your current directory to the root of the project.

    ```bash
    cd <project_directory>
    ```

3. **Copy `.env.example`**: Make a copy of the `.env.example` file and name it `.env`.

    ```bash
    cp .env.example .env
    ```

4. **Fill in Database Credentials**: Open the newly created `.env` file in your preferred text editor and fill in the database credentials for your local development environment. The `.env` file should look something like this:

    ```dotenv
    export DB_URL=jdbc:mysql://localhost:3306/your_database_name?createDatabaseIfNotExist=true
    export DB_USERNAME=your_database_username
    export DB_PASSWORD=your_database_password
    ```

    Replace `your_database_name`, `your_database_username`, and `your_database_password` with your actual database name, username, and password respectively.

5. **Save the Changes**: Once you've filled in the correct values, save the `.env` file.

6. **Verify Configuration**: Ensure that the database URL, username, and password are correctly configured by checking the `.env` file.

7. **Start Development**: You can now start your Spring Boot application in your local environment. The application will use the database credentials specified in your `.env` file for development purposes.

## Important Notes

- **Security**: Be cautious not to commit your `.env` file with sensitive information to version control systems like Git. Add `.env` to your `.gitignore` file to prevent accidental commits.

- **Database Setup**: Make sure you have a MySQL database set up locally with the appropriate permissions for the specified username and password.

- **Environment Variables**: The `.env` file is used to store environment variables, which are loaded by the application during runtime. Ensure that the format of the `.env` file remains consistent to avoid any errors.

By following these instructions, you should be able to set up your database credentials for development without any issues. If you encounter any problems, feel free to reach out to the team for assistance. Happy coding! 🚀