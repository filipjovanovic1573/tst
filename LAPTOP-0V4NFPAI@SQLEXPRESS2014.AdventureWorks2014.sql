/*=============================================================
SCRIPT HEADER

VERSION:   1.01.0001
DATE:      10-17-2016 11.58.56
SERVER:    LAPTOP-0V4NFPAI\SQLEXPRESS2014

DATABASE:	AdventureWorks2014
	Schemas:
		HumanResources, Person, Production, Sales
	XML schema collections:
		AdditionalContactInfoSchemaCollection, HRResumeSchemaCollection, IndividualSurveySchemaCollection
		ManuInstructionsSchemaCollection, ProductDescriptionSchemaCollection, StoreSurveySchemaCollection


=============================================================*/
SET ANSI_WARNINGS ON
SET XACT_ABORT ON
SET ARITHABORT ON
SET NOCOUNT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
GO
-- BEGINNING TRANSACTION STRUCTURE
PRINT 'Beginning transaction STRUCTURE'
BEGIN TRANSACTION _STRUCTURE_
GO
-- Create Schema [HumanResources]
Print 'Create Schema [HumanResources]'
GO
CREATE SCHEMA [HumanResources]
	AUTHORIZATION [dbo]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Schema [Production]
Print 'Create Schema [Production]'
GO
CREATE SCHEMA [Production]
	AUTHORIZATION [dbo]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Schema [Sales]
Print 'Create Schema [Sales]'
GO
CREATE SCHEMA [Sales]
	AUTHORIZATION [dbo]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Schema [Person]
Print 'Create Schema [Person]'
GO
CREATE SCHEMA [Person]
	AUTHORIZATION [dbo]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Xml Schema Collection [Person].[AdditionalContactInfoSchemaCollection]
Print 'Create Xml Schema Collection [Person].[AdditionalContactInfoSchemaCollection]'
GO
CREATE XML SCHEMA COLLECTION [Person].[AdditionalContactInfoSchemaCollection] AS
N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactInfo" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactInfo"><xsd:element name="AdditionalContactInfo"><xsd:complexType mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:any namespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactRecord http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactTypes" minOccurs="0" maxOccurs="unbounded" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element></xsd:schema><xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactRecord" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactRecord"><xsd:element name="ContactRecord"><xsd:complexType mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:choice minOccurs="0" maxOccurs="unbounded"><xsd:any namespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactTypes" /></xsd:choice><xsd:attribute name="date" type="xsd:date" /></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element></xsd:schema><xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactTypes" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactTypes" elementFormDefault="qualified"><xsd:element name="eMail" type="t:eMailType" /><xsd:element name="facsimileTelephoneNumber" type="t:phoneNumberType" /><xsd:element name="homePostalAddress" type="t:addressType" /><xsd:element name="internationaliSDNNumber" type="t:phoneNumberType" /><xsd:element name="mobile" type="t:phoneNumberType" /><xsd:element name="pager" type="t:phoneNumberType" /><xsd:element name="physicalDeliveryOfficeName" type="t:addressType" /><xsd:element name="registeredAddress" type="t:addressType" /><xsd:element name="telephoneNumber" type="t:phoneNumberType" /><xsd:element name="telexNumber" type="t:phoneNumberType" /><xsd:complexType name="addressType"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Street" type="xsd:string" maxOccurs="2" /><xsd:element name="City" type="xsd:string" /><xsd:element name="StateProvince" type="xsd:string" /><xsd:element name="PostalCode" type="xsd:string" minOccurs="0" /><xsd:element name="CountryRegion" type="xsd:string" /><xsd:element name="SpecialInstructions" type="t:specialInstructionsType" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="eMailType"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="eMailAddress" type="xsd:string" /><xsd:element name="SpecialInstructions" type="t:specialInstructionsType" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="phoneNumberType"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="number"><xsd:simpleType><xsd:restriction base="xsd:string"><xsd:pattern value="[0-9\(\)\-]*" /></xsd:restriction></xsd:simpleType></xsd:element><xsd:element name="SpecialInstructions" type="t:specialInstructionsType" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="specialInstructionsType" mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:any namespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ContactTypes" minOccurs="0" maxOccurs="unbounded" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:schema>'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Xml Schema Collection [Production].[ManuInstructionsSchemaCollection]
Print 'Create Xml Schema Collection [Production].[ManuInstructionsSchemaCollection]'
GO
CREATE XML SCHEMA COLLECTION [Production].[ManuInstructionsSchemaCollection] AS
N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelManuInstructions" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelManuInstructions" elementFormDefault="qualified"><xsd:element name="root"><xsd:complexType mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Location" maxOccurs="unbounded"><xsd:complexType mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="step" type="t:StepType" maxOccurs="unbounded" /></xsd:sequence><xsd:attribute name="LocationID" type="xsd:integer" use="required" /><xsd:attribute name="SetupHours" type="xsd:decimal" /><xsd:attribute name="MachineHours" type="xsd:decimal" /><xsd:attribute name="LaborHours" type="xsd:decimal" /><xsd:attribute name="LotSize" type="xsd:decimal" /></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element><xsd:complexType name="StepType" mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:choice minOccurs="0" maxOccurs="unbounded"><xsd:element name="tool" type="xsd:string" /><xsd:element name="material" type="xsd:string" /><xsd:element name="blueprint" type="xsd:string" /><xsd:element name="specs" type="xsd:string" /><xsd:element name="diag" type="xsd:string" /></xsd:choice></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:schema>'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Xml Schema Collection [HumanResources].[HRResumeSchemaCollection]
Print 'Create Xml Schema Collection [HumanResources].[HRResumeSchemaCollection]'
GO
CREATE XML SCHEMA COLLECTION [HumanResources].[HRResumeSchemaCollection] AS
N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/Resume" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/Resume" elementFormDefault="qualified"><xsd:element name="Address" type="t:AddressType" /><xsd:element name="Education" type="t:EducationType" /><xsd:element name="Employment" type="t:EmploymentType" /><xsd:element name="Location" type="t:LocationType" /><xsd:element name="Name" type="t:NameType" /><xsd:element name="Resume" type="t:ResumeType" /><xsd:element name="Telephone" type="t:TelephoneType" /><xsd:complexType name="AddressType"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Addr.Type" type="xsd:string" /><xsd:element name="Addr.OrgName" type="xsd:string" minOccurs="0" /><xsd:element name="Addr.Street" type="xsd:string" maxOccurs="unbounded" /><xsd:element name="Addr.Location"><xsd:complexType><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element ref="t:Location" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element><xsd:element name="Addr.PostalCode" type="xsd:string" /><xsd:element name="Addr.Telephone" minOccurs="0"><xsd:complexType><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element ref="t:Telephone" maxOccurs="unbounded" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="EducationType"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Edu.Level" type="xsd:string" /><xsd:element name="Edu.StartDate" type="xsd:date" /><xsd:element name="Edu.EndDate" type="xsd:date" /><xsd:element name="Edu.Degree" type="xsd:string" minOccurs="0" /><xsd:element name="Edu.Major" type="xsd:string" minOccurs="0" /><xsd:element name="Edu.Minor" type="xsd:string" minOccurs="0" /><xsd:element name="Edu.GPA" type="xsd:string" minOccurs="0" /><xsd:element name="Edu.GPAAlternate" type="xsd:decimal" minOccurs="0" /><xsd:element name="Edu.GPAScale" type="xsd:decimal" minOccurs="0" /><xsd:element name="Edu.School" type="xsd:string" minOccurs="0" /><xsd:element name="Edu.Location" minOccurs="0"><xsd:complexType><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element ref="t:Location" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="EmploymentType"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Emp.StartDate" type="xsd:date" minOccurs="0" /><xsd:element name="Emp.EndDate" type="xsd:date" minOccurs="0" /><xsd:element name="Emp.OrgName" type="xsd:string" /><xsd:element name="Emp.JobTitle" type="xsd:string" /><xsd:element name="Emp.Responsibility" type="xsd:string" /><xsd:element name="Emp.FunctionCategory" type="xsd:string" minOccurs="0" /><xsd:element name="Emp.IndustryCategory" type="xsd:string" minOccurs="0" /><xsd:element name="Emp.Location" minOccurs="0"><xsd:complexType><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element ref="t:Location" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="LocationType"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Loc.CountryRegion" type="xsd:string" /><xsd:element name="Loc.State" type="xsd:string" minOccurs="0" /><xsd:element name="Loc.City" type="xsd:string" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="NameType"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Name.Prefix" type="xsd:string" minOccurs="0" /><xsd:element name="Name.First" type="xsd:string" /><xsd:element name="Name.Middle" type="xsd:string" minOccurs="0" /><xsd:element name="Name.Last" type="xsd:string" /><xsd:element name="Name.Suffix" type="xsd:string" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="ResumeType"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element ref="t:Name" /><xsd:element name="Skills" type="xsd:string" minOccurs="0" /><xsd:element ref="t:Employment" maxOccurs="unbounded" /><xsd:element ref="t:Education" maxOccurs="unbounded" /><xsd:element ref="t:Address" maxOccurs="unbounded" /><xsd:element ref="t:Telephone" minOccurs="0" /><xsd:element name="EMail" type="xsd:string" minOccurs="0" /><xsd:element name="WebSite" type="xsd:string" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="TelephoneType"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Tel.Type" type="xsd:anyType" minOccurs="0" /><xsd:element name="Tel.IntlCode" type="xsd:int" minOccurs="0" /><xsd:element name="Tel.AreaCode" type="xsd:int" minOccurs="0" /><xsd:element name="Tel.Number" type="xsd:string" /><xsd:element name="Tel.Extension" type="xsd:int" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:schema>'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Xml Schema Collection [Production].[ProductDescriptionSchemaCollection]
Print 'Create Xml Schema Collection [Production].[ProductDescriptionSchemaCollection]'
GO
CREATE XML SCHEMA COLLECTION [Production].[ProductDescriptionSchemaCollection] AS
N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelWarrAndMain" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelWarrAndMain" elementFormDefault="qualified"><xsd:element name="Maintenance"><xsd:complexType><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="NoOfYears" type="xsd:string" /><xsd:element name="Description" type="xsd:string" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element><xsd:element name="Warranty"><xsd:complexType><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="WarrantyPeriod" type="xsd:string" /><xsd:element name="Description" type="xsd:string" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element></xsd:schema><xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelWarrAndMain" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelDescription" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelDescription" elementFormDefault="qualified"><xsd:import namespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/ProductModelWarrAndMain" /><xsd:element name="Code" type="xsd:string" /><xsd:element name="Description" type="xsd:string" /><xsd:element name="ProductDescription" type="t:ProductDescription" /><xsd:element name="Taxonomy" type="xsd:string" /><xsd:complexType name="Category"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element ref="t:Taxonomy" /><xsd:element ref="t:Code" /><xsd:element ref="t:Description" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="Features" mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element ref="ns1:Warranty" /><xsd:element ref="ns1:Maintenance" /><xsd:any namespace="##other" processContents="skip" minOccurs="0" maxOccurs="unbounded" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="Manufacturer"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Name" type="xsd:string" minOccurs="0" /><xsd:element name="CopyrightURL" type="xsd:string" minOccurs="0" /><xsd:element name="Copyright" type="xsd:string" minOccurs="0" /><xsd:element name="ProductURL" type="xsd:string" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="Picture"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Name" type="xsd:string" minOccurs="0" /><xsd:element name="Angle" type="xsd:string" minOccurs="0" /><xsd:element name="Size" type="xsd:string" minOccurs="0" /><xsd:element name="ProductPhotoID" type="xsd:integer" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="ProductDescription"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Summary" type="t:Summary" minOccurs="0" /><xsd:element name="Manufacturer" type="t:Manufacturer" minOccurs="0" /><xsd:element name="Features" type="t:Features" minOccurs="0" maxOccurs="unbounded" /><xsd:element name="Picture" type="t:Picture" minOccurs="0" maxOccurs="unbounded" /><xsd:element name="Category" type="t:Category" minOccurs="0" maxOccurs="unbounded" /><xsd:element name="Specifications" type="t:Specifications" minOccurs="0" maxOccurs="unbounded" /></xsd:sequence><xsd:attribute name="ProductModelID" type="xsd:string" /><xsd:attribute name="ProductModelName" type="xsd:string" /></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="Specifications" mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:any processContents="skip" minOccurs="0" maxOccurs="unbounded" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="Summary" mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:any namespace="http://www.w3.org/1999/xhtml" processContents="skip" minOccurs="0" maxOccurs="unbounded" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:schema>'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Xml Schema Collection [Person].[IndividualSurveySchemaCollection]
Print 'Create Xml Schema Collection [Person].[IndividualSurveySchemaCollection]'
GO
CREATE XML SCHEMA COLLECTION [Person].[IndividualSurveySchemaCollection] AS
N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/IndividualSurvey" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/IndividualSurvey" elementFormDefault="qualified"><xsd:element name="IndividualSurvey"><xsd:complexType><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="TotalPurchaseYTD" type="xsd:decimal" minOccurs="0" /><xsd:element name="DateFirstPurchase" type="xsd:date" minOccurs="0" /><xsd:element name="BirthDate" type="xsd:date" minOccurs="0" /><xsd:element name="MaritalStatus" type="xsd:string" minOccurs="0" /><xsd:element name="YearlyIncome" type="t:SalaryType" minOccurs="0" /><xsd:element name="Gender" type="xsd:string" minOccurs="0" /><xsd:element name="TotalChildren" type="xsd:int" minOccurs="0" /><xsd:element name="NumberChildrenAtHome" type="xsd:int" minOccurs="0" /><xsd:element name="Education" type="xsd:string" minOccurs="0" /><xsd:element name="Occupation" type="xsd:string" minOccurs="0" /><xsd:element name="HomeOwnerFlag" type="xsd:string" minOccurs="0" /><xsd:element name="NumberCarsOwned" type="xsd:int" minOccurs="0" /><xsd:element name="Hobby" type="xsd:string" minOccurs="0" maxOccurs="unbounded" /><xsd:element name="CommuteDistance" type="t:MileRangeType" minOccurs="0" /><xsd:element name="Comments" type="xsd:string" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element><xsd:simpleType name="MileRangeType"><xsd:restriction base="xsd:string"><xsd:enumeration value="0-1 Miles" /><xsd:enumeration value="1-2 Miles" /><xsd:enumeration value="2-5 Miles" /><xsd:enumeration value="5-10 Miles" /><xsd:enumeration value="10+ Miles" /></xsd:restriction></xsd:simpleType><xsd:simpleType name="SalaryType"><xsd:restriction base="xsd:string"><xsd:enumeration value="0-25000" /><xsd:enumeration value="25001-50000" /><xsd:enumeration value="50001-75000" /><xsd:enumeration value="75001-100000" /><xsd:enumeration value="greater than 100000" /></xsd:restriction></xsd:simpleType></xsd:schema>'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Xml Schema Collection [Sales].[StoreSurveySchemaCollection]
Print 'Create Xml Schema Collection [Sales].[StoreSurveySchemaCollection]'
GO
CREATE XML SCHEMA COLLECTION [Sales].[StoreSurveySchemaCollection] AS
N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:t="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/StoreSurvey" targetNamespace="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/StoreSurvey" elementFormDefault="qualified"><xsd:element name="StoreSurvey"><xsd:complexType><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="ContactName" type="xsd:string" minOccurs="0" /><xsd:element name="JobTitle" type="xsd:string" minOccurs="0" /><xsd:element name="AnnualSales" type="xsd:decimal" minOccurs="0" /><xsd:element name="AnnualRevenue" type="xsd:decimal" minOccurs="0" /><xsd:element name="BankName" type="xsd:string" minOccurs="0" /><xsd:element name="BusinessType" type="t:BusinessType" minOccurs="0" /><xsd:element name="YearOpened" type="xsd:gYear" minOccurs="0" /><xsd:element name="Specialty" type="t:SpecialtyType" minOccurs="0" /><xsd:element name="SquareFeet" type="xsd:float" minOccurs="0" /><xsd:element name="Brands" type="t:BrandType" minOccurs="0" /><xsd:element name="Internet" type="t:InternetType" minOccurs="0" /><xsd:element name="NumberEmployees" type="xsd:int" minOccurs="0" /><xsd:element name="Comments" type="xsd:string" minOccurs="0" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element><xsd:simpleType name="BrandType"><xsd:restriction base="xsd:string"><xsd:enumeration value="AW" /><xsd:enumeration value="2" /><xsd:enumeration value="3" /><xsd:enumeration value="4+" /></xsd:restriction></xsd:simpleType><xsd:simpleType name="BusinessType"><xsd:restriction base="xsd:string"><xsd:enumeration value="BM" /><xsd:enumeration value="BS" /><xsd:enumeration value="D" /><xsd:enumeration value="OS" /><xsd:enumeration value="SGS" /></xsd:restriction></xsd:simpleType><xsd:simpleType name="InternetType"><xsd:restriction base="xsd:string"><xsd:enumeration value="56kb" /><xsd:enumeration value="ISDN" /><xsd:enumeration value="DSL" /><xsd:enumeration value="T1" /><xsd:enumeration value="T2" /><xsd:enumeration value="T3" /></xsd:restriction></xsd:simpleType><xsd:simpleType name="SpecialtyType"><xsd:restriction base="xsd:string"><xsd:enumeration value="Family" /><xsd:enumeration value="Kids" /><xsd:enumeration value="BMX" /><xsd:enumeration value="Touring" /><xsd:enumeration value="Road" /><xsd:enumeration value="Mountain" /><xsd:enumeration value="All" /></xsd:restriction></xsd:simpleType></xsd:schema>'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- COMMITTING TRANSACTION STRUCTURE
PRINT 'Committing transaction STRUCTURE'
IF @@TRANCOUNT>0
	COMMIT TRANSACTION _STRUCTURE_
GO

SET NOEXEC OFF
GO
