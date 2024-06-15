Feature: create Project

  Scenario: Create and assign leader to a new project
    Given A new project will be started for product 14, with employee 55 as developer, named PSA_Project, with status initiated, description Arquitecture_Project, start date 2024-04-01 and end date 2024-06-30
    When I create the project with said data
    Then The project should be created with leader code 55, product code 14, name PSA_Project, status initiated, description Arquitecture_Project, start date 2024-04-01 and end date 2024-06-30
    
  Scenario: Create a new project with no assigned leader
    Given A new project will be started for product with code 14, named PSA_Project, with status initiated, description Arquitecture_Project, start date 2024-04-01 and end date 2024-06-30
    When I create the project without assigning a leader
    Then The project should be created without a leader, with product code 14, name PSA_Project, status initiated, description Arquitecture_Project, start date 2024-04-01 and end date 2024-06-30

  Scenario: Create a new project with no end date
    Given A new project will be started for product 14, with employee 55 as developer, named PSA_Project, with status initiated, description Arquitecture_Project and start date 2024-04-01
    When I create the project without stating an end date
    Then The project should be created with leader code 55, product code 14, name PSA_Project, status initiated, description Arquitecture_Project, start date 2024-04-01 and no end date

  Scenario: Create a new project with no description
    Given A new project will be started for product 14, with employee 55 as developer, named PSA_Project, with status initiated, start date 2024-04-01 and end date 2024-06-30
    When I create the project without stating a description
    Then The project should be created with leader code 55, product code 14, name PSA_Project, status initiated, start date 2024-04-01, end date 2024-06-30 and no description