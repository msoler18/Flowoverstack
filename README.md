# Q&A Platform (FlowOverStack)

## Description

This application is a web-based platform where users can ask questions, provide answers to existing questions, and comment on both questions and answers. It aims to facilitate knowledge sharing and discussion within a community.

## Ruby Version

The `Gemfile` specifies Rails `~> 5.0.4`. This version of Rails is typically compatible with Ruby versions **2.2.2 to 2.4.x**. The exact Ruby version used for development should be confirmed and specified here. Using a Ruby version manager (like RVM or rbenv) is recommended.

## System Dependencies

*   **Ruby on Rails:** The application is built using Rails. Manage gems with Bundler: `bundle install`.
*   **Database:** By default, the application uses SQLite3 in the development environment.

## Configuration

*   **Database:** Database configuration is primarily managed in `config/database.yml`. For a typical development setup with SQLite3, this file usually requires no changes.
*   Ensure all necessary gems are installed: `bundle install`.

## Database Creation & Initialization

1.  **Create the database:**
    ```bash
    rails db:create
    ```
2.  **Run database migrations:**
    ```bash
    rails db:migrate
    ```
3.  **Seed the database (optional):**
    ```bash
    rails db:seed
    ```
    *Note: The `db/seeds.rb` file is currently not populated with custom seed data.*

## How to Run the Test Suite

1.  **Execute tests:**
    ```bash
    rails test
    ```
2.  **Current Test Suite Status:**
    *   A recent code review found that test coverage is **critically low (almost non-existent)** across models, controllers, and integration workflows. Fixtures are also inadequate. Building out a comprehensive test suite is a high-priority task.

## How to Run the Application

1.  **Start the Rails server:**
    ```bash
    rails server
    ```
2.  **Access the application:**
    Open your web browser and navigate to `http://localhost:3000`.

## Key Features

*   User registration and login/logout functionality.
*   Users can create new questions.
*   Users can post answers to questions.
*   Users can add comments to both questions and answers.
*   Basic search functionality for questions.

## Code Review Summary Note

A comprehensive code review was recently conducted. Key findings highlight the urgent need for:

*   **Enhanced Security Measures:** Particularly around authorization (ensuring users can only modify their own content) and authentication on all necessary controller actions.
*   **Comprehensive Model Validations:** To ensure data integrity.
*   **Significantly Increased Test Coverage:** To provide confidence in the application's correctness and stability.

Detailed findings and specific recommendations from the review should be consulted for further development efforts.

---

This README provides a basic guide to getting the application set up and running. For further details on specific functionalities or issues, please refer to the codebase and the detailed code review documentation.
