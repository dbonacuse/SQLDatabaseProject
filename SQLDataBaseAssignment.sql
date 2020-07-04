
/* Inserting records into tables */
Insert into Employees (
id, lastname, firstname, email, position, salary, startdate)
VALUES (1, 'Pickles', 'Thomas', 'tpickles@gmail.com', 'Engineer', 12000.00, 07-04-2015),
(2, 'Finster Jr.', 'Charles', 'cfinsterjr@gmail.com', 'QA Tester', 100000.00, 03-17-2018),
(3, 'DeVille', 'Phillip', 'pdeville@gmail.com', 'Tier 1', 45000.00, 11-28-2019),
(4, 'DeVille', 'Lillian', 'ldeville@gmail.com', 'Tier 3', 65000.00, 05-09-2017);

  Insert into Clients (
  id, businessname, softwareversion, address, phonenumber, email, purchasedate)
  VALUES
  (1, 'Barney''s Bowlarama', 2019.70, '525 Main Street, Springfield, OR 97475',
          '541-633-1422', 'bowlingking@hotmail.com', 01-21-2018),
  (2, 'Moe''s Tavern', 2020.21, '372 Peanut Street, Springfield, OR 97475', '541-204-7689',
  'moeszyslak1124@yahoo.com', 10-04-2012),
  (3, 'Kwik-E-Mart', 2016.35, '75th West 3rd Street, Springfield, OR 97475', '541-657-3120',
  'homeofthesquishee@yahoo.com', 06-30-2014),
  (4, 'Itchy & Scratchy Land', 2020.21, ');

/* Utilizing the INNER JOIN statement */
  Select Employees.Name, EscalatedCases.techassigned, clients.businessname, EscalatedCases.Client,
      clients.SoftwareVersion, EscalatedCases.softwareversion, Employees.position,
      escalatedcases.caseid
  FROM EscalatedCases
  inner join Clients on EscalatedCases.Client = clients.businessname;
  inner join employees on escalatedcases.techassigned = employees.name;

  SELECT Employees.email, EscalatedCases.caseid, employees.salary, EscalatedCases.Resolved,
  Employees.startdate
  FROM Employees
  inner Join EscalatedCases on EscalatedCases.techassigned = Employees.name;

/* Adding columns to a table */
  ALTER TABLE Clients
    ADD Street varchar(255);

  ALTER TABLE Clients
    ADD City varchar(255);

  ALTER TABLE Clients
    ADD  State varchar(255);

  ALTER TABLE Clients
    ADD  Zip varchar(255);
