/****** Table: [extension].[AbsenceEventCategoryDescriptor] ******/

CREATE TABLE [extension].[AbsenceEventCategoryDescriptor](
    [AbsenceEventCategoryDescriptorId] [INT] NOT NULL,
    [AbsenceEventCategoryTypeId] [INT] NULL,
    CONSTRAINT [AbsenceEventCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AbsenceEventCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the code describing the type of leave taken, for example: Sick, Personal, Vacation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AbsenceEventCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'AbsenceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'AbsenceEventCategoryTypeId'
GO


/****** Table: [extension].[AbsenceEventCategoryType] ******/

CREATE TABLE [extension].[AbsenceEventCategoryType](
    [AbsenceEventCategoryTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [AbsenceEventCategoryType_PK] PRIMARY KEY CLUSTERED (
        [AbsenceEventCategoryTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AbsenceEventCategoryType] ADD CONSTRAINT [AbsenceEventCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[AbsenceEventCategoryType] ADD CONSTRAINT [AbsenceEventCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[AbsenceEventCategoryType] ADD CONSTRAINT [AbsenceEventCategoryType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the code describing the type of leave taken, for example: Sick, Personal, Vacation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AbsenceEventCategoryType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for AbsenceEventCategory', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryType', @level2type=N'COLUMN', @level2name=N'AbsenceEventCategoryTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the AbsenceEventCategory type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the AbsenceEventCategory type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[Applicant] ******/

CREATE TABLE [extension].[Applicant](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [MaidenName] [NVARCHAR](75) NULL,
    [SexTypeId] [INT] NULL,
    [BirthDate] [DATE] NULL,
    [HispanicLatinoEthnicity] [BIT] NULL,
    [CitizenshipStatusTypeId] [INT] NULL,
    [HighestCompletedLevelOfEducationDescriptorId] [INT] NULL,
    [YearsOfPriorProfessionalExperience] [DECIMAL](5, 2) NULL,
    [YearsOfPriorTeachingExperience] [DECIMAL](5, 2) NULL,
    [LoginId] [NVARCHAR](60) NULL,
    [HighlyQualifiedTeacher] [BIT] NULL,
    [HighlyQualifiedAcademicSubjectDescriptorId] [INT] NULL,
    [ProspectIdentifier] [NVARCHAR](32) NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [Applicant_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[Applicant] ADD CONSTRAINT [Applicant_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[Applicant] ADD CONSTRAINT [Applicant_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[Applicant] ADD CONSTRAINT [Applicant_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person who makes a formal application for an OpenStaffPosition.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'Applicant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s maiden name.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'MaidenName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'SexTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was born.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'BirthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino".', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether or not the person is a U.S. citizen.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'CitizenshipStatusTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'HighestCompletedLevelOfEducationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years that an individual has previously held a similar professional position in one or more education institutions.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'YearsOfPriorProfessionalExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years that an individual has previously held a teaching position in one or more education institutions.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'YearsOfPriorTeachingExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The login ID for the user; used for security access control interface.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'LoginId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'HighlyQualifiedTeacher'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject(s) in which the staff is deemed to be "highly qualified".', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'HighlyQualifiedAcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO


/****** Table: [extension].[ApplicantAddress] ******/

CREATE TABLE [extension].[ApplicantAddress](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [ApartmentRoomSuiteNumber] [NVARCHAR](50) NULL,
    [BuildingSiteNumber] [NVARCHAR](20) NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [StateAbbreviationTypeId] [INT] NOT NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [NameOfCounty] [NVARCHAR](30) NULL,
    [CountyFIPSCode] [NVARCHAR](5) NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [AddressTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeId] ASC,
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantAddress] ADD CONSTRAINT [ApplicantAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an address, including the street address, city, state, and ZIP code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeId'
GO


/****** Table: [extension].[ApplicantBackgroundCheck] ******/

CREATE TABLE [extension].[ApplicantBackgroundCheck](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [BackgroundCheckTypeDescriptorId] [INT] NOT NULL,
    [BackgroundCheckRequestedDate] [DATE] NOT NULL,
    [BackgroundCheckStatusDescriptorId] [INT] NULL,
    [BackgroundCheckCompletedDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantBackgroundCheck_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [BackgroundCheckTypeDescriptorId] ASC,
        [EducationOrganizationId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantBackgroundCheck] ADD CONSTRAINT [ApplicantBackgroundCheck_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Applicant background check history and disposition.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantBackgroundCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of background check (e.g., online, criminal, employment).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the background check was requested.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckRequestedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the background check (e.g., pending, under investigation, offense(s) found, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the background check was completed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckCompletedDate'
GO


/****** Table: [extension].[ApplicantCredential] ******/

CREATE TABLE [extension].[ApplicantCredential](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CredentialTypeId] [INT] NOT NULL,
    [CredentialFieldDescriptorId] [INT] NOT NULL,
    [LevelDescriptorId] [INT] NOT NULL,
    [TeachingCredentialDescriptorId] [INT] NOT NULL,
    [CredentialIssuanceDate] [DATE] NOT NULL,
    [CredentialExpirationDate] [DATE] NULL,
    [TeachingCredentialBasisTypeId] [INT] NULL,
    [StateOfIssueStateAbbreviationTypeId] [INT] NULL,
    [CredentialIdentifier] [NVARCHAR](50) NULL,
    [CurrentCredential] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantCredential_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [CredentialFieldDescriptorId] ASC,
        [CredentialIssuanceDate] ASC,
        [CredentialTypeId] ASC,
        [EducationOrganizationId] ASC,
        [LevelDescriptorId] ASC,
        [TeachingCredentialDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantCredential] ADD CONSTRAINT [ApplicantCredential_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legal document or authorization giving authorization to perform teaching assignment services.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantCredential'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the category of credential an individual holds.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'CredentialTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The field of certification for the certificate (e.g., Mathematics, Music).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'CredentialFieldDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level(s) certified for teaching.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'LevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the category of a legal document giving authorization to perform teaching assignment services.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'TeachingCredentialDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an active credential was issued to an individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'CredentialIssuanceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an active credential held by an individual will expire.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'CredentialExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the pre-determined criteria for granting the teaching credential that an individual holds.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'TeachingCredentialBasisTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether this is the credential currently being used for employment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'CurrentCredential'
GO


/****** Table: [extension].[ApplicantCredentialEndorsement] ******/

CREATE TABLE [extension].[ApplicantCredentialEndorsement](
    [CredentialTypeId] [INT] NOT NULL,
    [CredentialFieldDescriptorId] [INT] NOT NULL,
    [LevelDescriptorId] [INT] NOT NULL,
    [TeachingCredentialDescriptorId] [INT] NOT NULL,
    [CredentialIssuanceDate] [DATE] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CredentialEndorsement] [NVARCHAR](255) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantCredentialEndorsement_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [CredentialEndorsement] ASC,
        [CredentialFieldDescriptorId] ASC,
        [CredentialIssuanceDate] ASC,
        [CredentialTypeId] ASC,
        [EducationOrganizationId] ASC,
        [LevelDescriptorId] ASC,
        [TeachingCredentialDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantCredentialEndorsement] ADD CONSTRAINT [ApplicantCredentialEndorsement_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endorsements are attachments to teaching certificates and indicate areas of specialization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantCredentialEndorsement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the category of credential an individual holds.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredentialEndorsement', @level2type=N'COLUMN', @level2name=N'CredentialTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The field of certification for the certificate (e.g., Mathematics, Music).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredentialEndorsement', @level2type=N'COLUMN', @level2name=N'CredentialFieldDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level(s) certified for teaching.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredentialEndorsement', @level2type=N'COLUMN', @level2name=N'LevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the category of a legal document giving authorization to perform teaching assignment services.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredentialEndorsement', @level2type=N'COLUMN', @level2name=N'TeachingCredentialDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an active credential was issued to an individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredentialEndorsement', @level2type=N'COLUMN', @level2name=N'CredentialIssuanceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredentialEndorsement', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredentialEndorsement', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endorsements are attachments to teaching certificates and indicate areas of specialization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredentialEndorsement', @level2type=N'COLUMN', @level2name=N'CredentialEndorsement'
GO


/****** Table: [extension].[ApplicantElectronicMail] ******/

CREATE TABLE [extension].[ApplicantElectronicMail](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ElectronicMailAddress] [NVARCHAR](128) NOT NULL,
    [ElectronicMailTypeId] [INT] NOT NULL,
    [PrimaryEmailAddressIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantElectronicMail_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [ElectronicMailTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantElectronicMail] ADD CONSTRAINT [ApplicantElectronicMail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantElectronicMail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantElectronicMail', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantElectronicMail', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The electronic mail (e-mail) address listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantElectronicMail', @level2type=N'COLUMN', @level2name=N'PrimaryEmailAddressIndicator'
GO


/****** Table: [extension].[ApplicantIdentificationDocument] ******/

CREATE TABLE [extension].[ApplicantIdentificationDocument](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [PersonalInformationVerificationTypeId] [INT] NOT NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [IdentificationDocumentUseTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [IdentificationDocumentUseTypeId] ASC,
        [PersonalInformationVerificationTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantIdentificationDocument] ADD CONSTRAINT [ApplicantIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseTypeId'
GO


/****** Table: [extension].[ApplicantInternationalAddress] ******/

CREATE TABLE [extension].[ApplicantInternationalAddress](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [AddressTypeId] [INT] NOT NULL,
    [AddressLine1] [NVARCHAR](150) NOT NULL,
    [AddressLine2] [NVARCHAR](150) NULL,
    [AddressLine3] [NVARCHAR](150) NULL,
    [AddressLine4] [NVARCHAR](150) NULL,
    [CountryDescriptorId] [INT] NOT NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantInternationalAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeId] ASC,
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantInternationalAddress] ADD CONSTRAINT [ApplicantInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an international address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantInternationalAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The third line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fourth line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the country.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'CountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO


/****** Table: [extension].[ApplicantLanguage] ******/

CREATE TABLE [extension].[ApplicantLanguage](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantLanguage_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [LanguageDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantLanguage] ADD CONSTRAINT [ApplicantLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language(s) the individual uses to communicate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguage', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguage', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO


/****** Table: [extension].[ApplicantLanguageUse] ******/

CREATE TABLE [extension].[ApplicantLanguageUse](
    [LanguageDescriptorId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [LanguageUseTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantLanguageUse_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [LanguageDescriptorId] ASC,
        [LanguageUseTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantLanguageUse] ADD CONSTRAINT [ApplicantLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantLanguageUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguageUse', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguageUse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageUseTypeId'
GO


/****** Table: [extension].[ApplicantRace] ******/

CREATE TABLE [extension].[ApplicantRace](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [RaceTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantRace_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [RaceTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantRace] ADD CONSTRAINT [ApplicantRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantRace', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantRace', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantRace', @level2type=N'COLUMN', @level2name=N'RaceTypeId'
GO


/****** Table: [extension].[ApplicantStaffIdentificationCode] ******/

CREATE TABLE [extension].[ApplicantStaffIdentificationCode](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [IdentificationCode] [NVARCHAR](60) NOT NULL,
    [StaffIdentificationSystemDescriptorId] [INT] NOT NULL,
    [AssigningOrganizationIdentificationCode] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantStaffIdentificationCode_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [StaffIdentificationSystemDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantStaffIdentificationCode] ADD CONSTRAINT [ApplicantStaffIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an applicant by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantStaffIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantStaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantStaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantStaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantStaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'StaffIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization code or name assigning the staff Identification Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantStaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssigningOrganizationIdentificationCode'
GO


/****** Table: [extension].[ApplicantTeacherPreparationProgram] ******/

CREATE TABLE [extension].[ApplicantTeacherPreparationProgram](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [TeacherPreparationProgramName] [NVARCHAR](75) NOT NULL,
    [TeacherPreparationProgramIdentifier] [NVARCHAR](75) NULL,
    [TeacherPreparationProgramTypeDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [MajorSpecialization] [NVARCHAR](75) NOT NULL,
    [GPA] [DECIMAL](18, 4) NULL,
    [LevelOfDegreeAwardedDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantTeacherPreparationProgram_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [TeacherPreparationProgramName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] ADD CONSTRAINT [ApplicantTeacherPreparationProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Teacher Preparation Program(s) completed by the teacher.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantTeacherPreparationProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Teacher Preparation Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier assigned to the teacher preparation program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of teacher prep program (e.g., college, alternative, TFA, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the organization providing the teacher preparation program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The major area for a degree or area of specialization for a certificate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'MajorSpecialization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final GPA for the teacher achieved in the program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'GPA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of degree awarded by the teacher preparation program to the person (e.g., Certificate Only, Bachelor''s, Master''s, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'LevelOfDegreeAwardedDescriptorId'
GO


/****** Table: [extension].[ApplicantTeacherPreparationProgramAddress] ******/

CREATE TABLE [extension].[ApplicantTeacherPreparationProgramAddress](
    [TeacherPreparationProgramName] [NVARCHAR](75) NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [ApartmentRoomSuiteNumber] [NVARCHAR](50) NULL,
    [BuildingSiteNumber] [NVARCHAR](20) NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [StateAbbreviationTypeId] [INT] NOT NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [NameOfCounty] [NVARCHAR](30) NULL,
    [CountyFIPSCode] [NVARCHAR](5) NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [AddressTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantTeacherPreparationProgramAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeId] ASC,
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [TeacherPreparationProgramName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] ADD CONSTRAINT [ApplicantTeacherPreparationProgramAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The address of the institution providing the teacher prep program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantTeacherPreparationProgramAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Teacher Preparation Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeId'
GO


/****** Table: [extension].[ApplicantTelephone] ******/

CREATE TABLE [extension].[ApplicantTelephone](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [TelephoneNumber] [NVARCHAR](24) NOT NULL,
    [TelephoneNumberTypeId] [INT] NOT NULL,
    [OrderOfPriority] [INT] NULL,
    [TextMessageCapabilityIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantTelephone_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [TelephoneNumberTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantTelephone] ADD CONSTRAINT [ApplicantTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 10-digit telephone number, including the area code, for the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumberTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'OrderOfPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'TextMessageCapabilityIndicator'
GO


/****** Table: [extension].[ApplicantVisa] ******/

CREATE TABLE [extension].[ApplicantVisa](
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [VisaTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicantVisa_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [VisaTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantVisa] ADD CONSTRAINT [ApplicantVisa_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantVisa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantVisa', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantVisa', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantVisa', @level2type=N'COLUMN', @level2name=N'VisaTypeId'
GO


/****** Table: [extension].[Application] ******/

CREATE TABLE [extension].[Application](
    [ApplicationIdentifier] [NVARCHAR](20) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ApplicationDate] [DATE] NOT NULL,
    [ApplicationStatusDescriptorId] [INT] NOT NULL,
    [CurrentEmployee] [BIT] NULL,
    [AcademicSubjectDescriptorId] [INT] NULL,
    [AcceptedDate] [DATE] NULL,
    [ApplicationSourceDescriptorId] [INT] NULL,
    [FirstContactDate] [DATE] NULL,
    [HighNeedsAcademicSubjectDescriptorId] [INT] NULL,
    [HireStatusDescriptorId] [INT] NULL,
    [HiringSourceDescriptorId] [INT] NULL,
    [WithdrawDate] [DATE] NULL,
    [WithdrawReasonDescriptorId] [INT] NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [Application_PK] PRIMARY KEY CLUSTERED (
        [ApplicationIdentifier] ASC,
        [EducationOrganizationId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[Application] ADD CONSTRAINT [Application_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[Application] ADD CONSTRAINT [Application_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[Application] ADD CONSTRAINT [Application_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An application for employment or contract.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'Application'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to the application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'ApplicationIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year the application was submitted.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'ApplicationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the current status of the application (e.g., received, phone screen, interview, awaiting decision, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'ApplicationStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator as to whether the applicant is a current employee of the school district.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'CurrentEmployee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject for which the application is made.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of job acceptance, if offered.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'AcceptedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Specifies the source for the application (e.g., Job fair, website, referral).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'ApplicationSourceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date applicant was first contacted after submitting application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'FirstContactDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The high need academic subject for the application, if any.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'HighNeedsAcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the current status of the application for hire (e.g., applied, recommended, rejected, exited, offered, hired).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'HireStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source for the application (e.g.,job fair, website, referral, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'HiringSourceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the application was withdrawn by the applicant.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'WithdrawDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reason applicant withdrew application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'WithdrawReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO


/****** Table: [extension].[ApplicationEvent] ******/

CREATE TABLE [extension].[ApplicationEvent](
    [EventDate] [DATE] NOT NULL,
    [EventEndDate] [DATE] NULL,
    [SequenceNumber] [INT] NOT NULL,
    [ApplicationEventTypeDescriptorId] [INT] NOT NULL,
    [ApplicationEvaluationScore] [DECIMAL](36, 18) NULL,
    [ApplicationEventResultDescriptorId] [INT] NULL,
    [ApplicationIdentifier] [NVARCHAR](20) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [ApplicationEvent_PK] PRIMARY KEY CLUSTERED (
        [ApplicationEventTypeDescriptorId] ASC,
        [ApplicationIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [EventDate] ASC,
        [SequenceNumber] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicationEvent] ADD CONSTRAINT [ApplicationEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ApplicationEvent] ADD CONSTRAINT [ApplicationEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ApplicationEvent] ADD CONSTRAINT [ApplicationEvent_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The life cycle events associated with an application (phone screen, review, interview, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicationEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the application event, or begin date if an interval.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date of the event, if an interval.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEvent', @level2type=N'COLUMN', @level2name=N'EventEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequence number of the application events. This is used to discriminate between mutiple events of the same type in the same day.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEvent', @level2type=N'COLUMN', @level2name=N'SequenceNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of application event (e.g., added to pool, phone screen, interview, sample lesson).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEvent', @level2type=N'COLUMN', @level2name=N'ApplicationEventTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application evaluation score, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEvent', @level2type=N'COLUMN', @level2name=N'ApplicationEvaluationScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The recommendation, result or conclusion of the application event (e.g., Continue, exit, recommend for hire).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEvent', @level2type=N'COLUMN', @level2name=N'ApplicationEventResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to the application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEvent', @level2type=N'COLUMN', @level2name=N'ApplicationIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEvent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[ApplicationEventResultDescriptor] ******/

CREATE TABLE [extension].[ApplicationEventResultDescriptor](
    [ApplicationEventResultDescriptorId] [INT] NOT NULL,
    [ApplicationEventResultTypeId] [INT] NULL,
    CONSTRAINT [ApplicationEventResultDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ApplicationEventResultDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the recommendation, result or conclusion of the application event (e.g., Continue, exit, recommend for hire).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicationEventResultDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventResultDescriptor', @level2type=N'COLUMN', @level2name=N'ApplicationEventResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventResultDescriptor', @level2type=N'COLUMN', @level2name=N'ApplicationEventResultTypeId'
GO


/****** Table: [extension].[ApplicationEventResultType] ******/

CREATE TABLE [extension].[ApplicationEventResultType](
    [ApplicationEventResultTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [ApplicationEventResultType_PK] PRIMARY KEY CLUSTERED (
        [ApplicationEventResultTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicationEventResultType] ADD CONSTRAINT [ApplicationEventResultType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ApplicationEventResultType] ADD CONSTRAINT [ApplicationEventResultType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ApplicationEventResultType] ADD CONSTRAINT [ApplicationEventResultType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the recommendation, result or conclusion of the application event (e.g., Continue, exit, recommend for hire).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicationEventResultType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for ApplicationEventResult', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventResultType', @level2type=N'COLUMN', @level2name=N'ApplicationEventResultTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventResultType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the ApplicationEventResult type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventResultType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the ApplicationEventResult type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventResultType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[ApplicationEventType] ******/

CREATE TABLE [extension].[ApplicationEventType](
    [ApplicationEventTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [ApplicationEventType_PK] PRIMARY KEY CLUSTERED (
        [ApplicationEventTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicationEventType] ADD CONSTRAINT [ApplicationEventType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ApplicationEventType] ADD CONSTRAINT [ApplicationEventType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ApplicationEventType] ADD CONSTRAINT [ApplicationEventType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the description of application event (e.g., added to pool, phone screen, interview, sample lesson).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicationEventType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for ApplicationEvent', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventType', @level2type=N'COLUMN', @level2name=N'ApplicationEventTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the ApplicationEvent type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the ApplicationEvent type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[ApplicationEventTypeDescriptor] ******/

CREATE TABLE [extension].[ApplicationEventTypeDescriptor](
    [ApplicationEventTypeDescriptorId] [INT] NOT NULL,
    [ApplicationEventTypeId] [INT] NULL,
    CONSTRAINT [ApplicationEventTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ApplicationEventTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the description of application event (e.g., added to pool, phone screen, interview, sample lesson).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicationEventTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ApplicationEventTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationEventTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ApplicationEventTypeId'
GO


/****** Table: [extension].[ApplicationOpenStaffPosition] ******/

CREATE TABLE [extension].[ApplicationOpenStaffPosition](
    [ApplicationIdentifier] [NVARCHAR](20) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [RequisitionNumber] [NVARCHAR](20) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ApplicationOpenStaffPosition_PK] PRIMARY KEY CLUSTERED (
        [ApplicationIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [RequisitionNumber] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicationOpenStaffPosition] ADD CONSTRAINT [ApplicationOpenStaffPosition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The open staff position(s) associated with the application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicationOpenStaffPosition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to the application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationOpenStaffPosition', @level2type=N'COLUMN', @level2name=N'ApplicationIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationOpenStaffPosition', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationOpenStaffPosition', @level2type=N'COLUMN', @level2name=N'RequisitionNumber'
GO


/****** Table: [extension].[ApplicationSourceDescriptor] ******/

CREATE TABLE [extension].[ApplicationSourceDescriptor](
    [ApplicationSourceDescriptorId] [INT] NOT NULL,
    [ApplicationSourceTypeId] [INT] NULL,
    CONSTRAINT [ApplicationSourceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ApplicationSourceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the source for the application (e.g., Job fair, website, referral).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicationSourceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationSourceDescriptor', @level2type=N'COLUMN', @level2name=N'ApplicationSourceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationSourceDescriptor', @level2type=N'COLUMN', @level2name=N'ApplicationSourceTypeId'
GO


/****** Table: [extension].[ApplicationSourceType] ******/

CREATE TABLE [extension].[ApplicationSourceType](
    [ApplicationSourceTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [ApplicationSourceType_PK] PRIMARY KEY CLUSTERED (
        [ApplicationSourceTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicationSourceType] ADD CONSTRAINT [ApplicationSourceType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ApplicationSourceType] ADD CONSTRAINT [ApplicationSourceType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ApplicationSourceType] ADD CONSTRAINT [ApplicationSourceType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the source for the application (e.g., Job fair, website, referral).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicationSourceType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for ApplicationSource', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationSourceType', @level2type=N'COLUMN', @level2name=N'ApplicationSourceTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationSourceType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the ApplicationSource type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationSourceType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the ApplicationSource type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationSourceType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[ApplicationStatusDescriptor] ******/

CREATE TABLE [extension].[ApplicationStatusDescriptor](
    [ApplicationStatusDescriptorId] [INT] NOT NULL,
    [ApplicationStatusTypeId] [INT] NULL,
    CONSTRAINT [ApplicationStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ApplicationStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the current status of the application (e.g., received, phone screen, interview, awaiting decision, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicationStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationStatusDescriptor', @level2type=N'COLUMN', @level2name=N'ApplicationStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationStatusDescriptor', @level2type=N'COLUMN', @level2name=N'ApplicationStatusTypeId'
GO


/****** Table: [extension].[ApplicationStatusType] ******/

CREATE TABLE [extension].[ApplicationStatusType](
    [ApplicationStatusTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [ApplicationStatusType_PK] PRIMARY KEY CLUSTERED (
        [ApplicationStatusTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicationStatusType] ADD CONSTRAINT [ApplicationStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ApplicationStatusType] ADD CONSTRAINT [ApplicationStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ApplicationStatusType] ADD CONSTRAINT [ApplicationStatusType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the current status of the application (e.g., received, phone screen, interview, awaiting decision, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicationStatusType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for ApplicationStatus', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationStatusType', @level2type=N'COLUMN', @level2name=N'ApplicationStatusTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationStatusType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the ApplicationStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationStatusType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the ApplicationStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicationStatusType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[BackgroundCheckStatusDescriptor] ******/

CREATE TABLE [extension].[BackgroundCheckStatusDescriptor](
    [BackgroundCheckStatusDescriptorId] [INT] NOT NULL,
    [BackgroundCheckStatusTypeId] [INT] NULL,
    CONSTRAINT [BackgroundCheckStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BackgroundCheckStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the  status of the background check (e.g., pending, under investigation, offense(s) found, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'BackgroundCheckStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusDescriptor', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusDescriptor', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusTypeId'
GO


/****** Table: [extension].[BackgroundCheckStatusType] ******/

CREATE TABLE [extension].[BackgroundCheckStatusType](
    [BackgroundCheckStatusTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [BackgroundCheckStatusType_PK] PRIMARY KEY CLUSTERED (
        [BackgroundCheckStatusTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[BackgroundCheckStatusType] ADD CONSTRAINT [BackgroundCheckStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[BackgroundCheckStatusType] ADD CONSTRAINT [BackgroundCheckStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[BackgroundCheckStatusType] ADD CONSTRAINT [BackgroundCheckStatusType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the background check (e.g., pending, under investigation, offense(s) found, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'BackgroundCheckStatusType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for BackgroundCheckStatus', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusType', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the BackgroundCheckStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the BackgroundCheckStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[BackgroundCheckType] ******/

CREATE TABLE [extension].[BackgroundCheckType](
    [BackgroundCheckTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [BackgroundCheckType_PK] PRIMARY KEY CLUSTERED (
        [BackgroundCheckTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[BackgroundCheckType] ADD CONSTRAINT [BackgroundCheckType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[BackgroundCheckType] ADD CONSTRAINT [BackgroundCheckType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[BackgroundCheckType] ADD CONSTRAINT [BackgroundCheckType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of background check (e.g., online, criminal, employment).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'BackgroundCheckType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for BackgroundCheck', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckType', @level2type=N'COLUMN', @level2name=N'BackgroundCheckTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the BackgroundCheck type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the BackgroundCheck type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[BackgroundCheckTypeDescriptor] ******/

CREATE TABLE [extension].[BackgroundCheckTypeDescriptor](
    [BackgroundCheckTypeDescriptorId] [INT] NOT NULL,
    [BackgroundCheckTypeId] [INT] NULL,
    CONSTRAINT [BackgroundCheckTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BackgroundCheckTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of background check (e.g., online, criminal, employment).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'BackgroundCheckTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckTypeDescriptor', @level2type=N'COLUMN', @level2name=N'BackgroundCheckTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckTypeDescriptor', @level2type=N'COLUMN', @level2name=N'BackgroundCheckTypeId'
GO


/****** Table: [extension].[EducationOrganizationFacts] ******/

CREATE TABLE [extension].[EducationOrganizationFacts](
    [FactsAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [NumberAdministratorsEmployed] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [NumberTeachersEmployed] [INT] NULL,
    [PercentStudentsFreeReducedLunch] [DECIMAL](5, 4) NULL,
    [PercentStudentsLimitedEnglishProficiency] [DECIMAL](5, 4) NULL,
    [PercentStudentsSpecialEducation] [DECIMAL](5, 4) NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [EducationOrganizationFacts_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationFacts] ADD CONSTRAINT [EducationOrganizationFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EducationOrganizationFacts] ADD CONSTRAINT [EducationOrganizationFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EducationOrganizationFacts] ADD CONSTRAINT [EducationOrganizationFacts_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Selective fact(s) about the education organization used for comparative analysis.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of date for the fact(s) about the Education Organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year associated with the fact(s).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of administrators employed by education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'NumberAdministratorsEmployed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Enrollment count of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of teachers employed by education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'NumberTeachersEmployed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students eligible for free and reduced lunches.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'PercentStudentsFreeReducedLunch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Percent of students in education organization with limited English proficiency.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'PercentStudentsLimitedEnglishProficiency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Percent of students in education organization in special education program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'PercentStudentsSpecialEducation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[EmploymentEvent] ******/

CREATE TABLE [extension].[EmploymentEvent](
    [EmploymentEventTypeDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NULL,
    [EarlyHire] [BIT] NULL,
    [InternalExternalHireTypeId] [INT] NULL,
    [MutualConsent] [BIT] NULL,
    [RestrictedChoice] [BIT] NULL,
    [RequisitionNumber] [NVARCHAR](20) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [EmploymentEvent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentEventTypeDescriptorId] ASC,
        [RequisitionNumber] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EmploymentEvent] ADD CONSTRAINT [EmploymentEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EmploymentEvent] ADD CONSTRAINT [EmploymentEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EmploymentEvent] ADD CONSTRAINT [EmploymentEvent_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The event associated with hiring staff for employment (or contract).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EmploymentEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of the employment event (e.g., transfer, new hire, title change).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEvent', @level2type=N'COLUMN', @level2name=N'EmploymentEventTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEvent', @level2type=N'COLUMN', @level2name=N'HireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether this was an early hire.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEvent', @level2type=N'COLUMN', @level2name=N'EarlyHire'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether the hire was an internal or external person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEvent', @level2type=N'COLUMN', @level2name=N'InternalExternalHireTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether this was a mutual consent hire.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEvent', @level2type=N'COLUMN', @level2name=N'MutualConsent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether this was a restricted choice hire.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEvent', @level2type=N'COLUMN', @level2name=N'RestrictedChoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEvent', @level2type=N'COLUMN', @level2name=N'RequisitionNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEvent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[EmploymentEventType] ******/

CREATE TABLE [extension].[EmploymentEventType](
    [EmploymentEventTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [EmploymentEventType_PK] PRIMARY KEY CLUSTERED (
        [EmploymentEventTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EmploymentEventType] ADD CONSTRAINT [EmploymentEventType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EmploymentEventType] ADD CONSTRAINT [EmploymentEventType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EmploymentEventType] ADD CONSTRAINT [EmploymentEventType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the  type of the employment event (e.g., transfer, new hire, title change).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EmploymentEventType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for EmploymentEvent', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEventType', @level2type=N'COLUMN', @level2name=N'EmploymentEventTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEventType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the EmploymentEvent type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEventType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the EmploymentEvent type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEventType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[EmploymentEventTypeDescriptor] ******/

CREATE TABLE [extension].[EmploymentEventTypeDescriptor](
    [EmploymentEventTypeDescriptorId] [INT] NOT NULL,
    [EmploymentEventTypeId] [INT] NULL,
    CONSTRAINT [EmploymentEventTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EmploymentEventTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of the employment event (e.g., transfer, new hire, title change).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EmploymentEventTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEventTypeDescriptor', @level2type=N'COLUMN', @level2name=N'EmploymentEventTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentEventTypeDescriptor', @level2type=N'COLUMN', @level2name=N'EmploymentEventTypeId'
GO


/****** Table: [extension].[EmploymentSeparationEvent] ******/

CREATE TABLE [extension].[EmploymentSeparationEvent](
    [EmploymentSeparationDate] [DATE] NOT NULL,
    [EmploymentSeparationTypeDescriptorId] [INT] NOT NULL,
    [EmploymentSeparationEnteredDate] [DATE] NULL,
    [EmploymentSeparationReasonDescriptorId] [INT] NULL,
    [RemainingInDistrict] [BIT] NULL,
    [RequisitionNumber] [NVARCHAR](20) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [EmploymentSeparationEvent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentSeparationDate] ASC,
        [RequisitionNumber] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EmploymentSeparationEvent] ADD CONSTRAINT [EmploymentSeparationEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EmploymentSeparationEvent] ADD CONSTRAINT [EmploymentSeparationEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EmploymentSeparationEvent] ADD CONSTRAINT [EmploymentSeparationEvent_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The separation event that triggered an end to an employment or contractual relationship.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EmploymentSeparationEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Effective date of the separation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationEvent', @level2type=N'COLUMN', @level2name=N'EmploymentSeparationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of separation (e.g., termination, displacement, retirement, transfer, voluntary departure).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationEvent', @level2type=N'COLUMN', @level2name=N'EmploymentSeparationTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the separation event was first entered or when notice was given.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationEvent', @level2type=N'COLUMN', @level2name=N'EmploymentSeparationEnteredDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reason(s) for the separation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationEvent', @level2type=N'COLUMN', @level2name=N'EmploymentSeparationReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether a teacher is leaving a school but remaining within the district, or leaving the district entirely.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationEvent', @level2type=N'COLUMN', @level2name=N'RemainingInDistrict'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationEvent', @level2type=N'COLUMN', @level2name=N'RequisitionNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationEvent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[EmploymentSeparationReasonDescriptor] ******/

CREATE TABLE [extension].[EmploymentSeparationReasonDescriptor](
    [EmploymentSeparationReasonDescriptorId] [INT] NOT NULL,
    [EmploymentSeparationReasonTypeId] [INT] NULL,
    CONSTRAINT [EmploymentSeparationReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EmploymentSeparationReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the reason(s) for the separation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EmploymentSeparationReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationReasonDescriptor', @level2type=N'COLUMN', @level2name=N'EmploymentSeparationReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationReasonDescriptor', @level2type=N'COLUMN', @level2name=N'EmploymentSeparationReasonTypeId'
GO


/****** Table: [extension].[EmploymentSeparationReasonType] ******/

CREATE TABLE [extension].[EmploymentSeparationReasonType](
    [EmploymentSeparationReasonTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [EmploymentSeparationReasonType_PK] PRIMARY KEY CLUSTERED (
        [EmploymentSeparationReasonTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EmploymentSeparationReasonType] ADD CONSTRAINT [EmploymentSeparationReasonType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EmploymentSeparationReasonType] ADD CONSTRAINT [EmploymentSeparationReasonType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EmploymentSeparationReasonType] ADD CONSTRAINT [EmploymentSeparationReasonType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the reason(s) for the separation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EmploymentSeparationReasonType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for EmploymentSeparationReason', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationReasonType', @level2type=N'COLUMN', @level2name=N'EmploymentSeparationReasonTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationReasonType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the EmploymentSeparationReason type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationReasonType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the EmploymentSeparationReason type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationReasonType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[EmploymentSeparationType] ******/

CREATE TABLE [extension].[EmploymentSeparationType](
    [EmploymentSeparationTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [EmploymentSeparationType_PK] PRIMARY KEY CLUSTERED (
        [EmploymentSeparationTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EmploymentSeparationType] ADD CONSTRAINT [EmploymentSeparationType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EmploymentSeparationType] ADD CONSTRAINT [EmploymentSeparationType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EmploymentSeparationType] ADD CONSTRAINT [EmploymentSeparationType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the type of separation (e.g., termination, displacement, retirement, transfer, voluntary departure).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EmploymentSeparationType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for EmploymentSeparation', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationType', @level2type=N'COLUMN', @level2name=N'EmploymentSeparationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the EmploymentSeparation type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the EmploymentSeparation type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[EmploymentSeparationTypeDescriptor] ******/

CREATE TABLE [extension].[EmploymentSeparationTypeDescriptor](
    [EmploymentSeparationTypeDescriptorId] [INT] NOT NULL,
    [EmploymentSeparationTypeId] [INT] NULL,
    CONSTRAINT [EmploymentSeparationTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EmploymentSeparationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of separation (e.g., termination, displacement, retirement, transfer, voluntary departure).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EmploymentSeparationTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'EmploymentSeparationTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EmploymentSeparationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'EmploymentSeparationTypeId'
GO


/****** Table: [extension].[FundingSourceDescriptor] ******/

CREATE TABLE [extension].[FundingSourceDescriptor](
    [FundingSourceDescriptorId] [INT] NOT NULL,
    [FundingSourceTypeId] [INT] NULL,
    CONSTRAINT [FundingSourceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FundingSourceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the funding source (e.g., federal, district).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'FundingSourceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FundingSourceDescriptor', @level2type=N'COLUMN', @level2name=N'FundingSourceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FundingSourceDescriptor', @level2type=N'COLUMN', @level2name=N'FundingSourceTypeId'
GO


/****** Table: [extension].[FundingSourceType] ******/

CREATE TABLE [extension].[FundingSourceType](
    [FundingSourceTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [FundingSourceType_PK] PRIMARY KEY CLUSTERED (
        [FundingSourceTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[FundingSourceType] ADD CONSTRAINT [FundingSourceType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[FundingSourceType] ADD CONSTRAINT [FundingSourceType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[FundingSourceType] ADD CONSTRAINT [FundingSourceType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the funding source (e.g., federal, district).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'FundingSourceType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for FundingSource', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FundingSourceType', @level2type=N'COLUMN', @level2name=N'FundingSourceTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FundingSourceType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the FundingSource type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FundingSourceType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the FundingSource type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FundingSourceType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[HireStatusDescriptor] ******/

CREATE TABLE [extension].[HireStatusDescriptor](
    [HireStatusDescriptorId] [INT] NOT NULL,
    [HireStatusTypeId] [INT] NULL,
    CONSTRAINT [HireStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [HireStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the current status of the application for hire (e.g., applied, recommended, rejected, exited, offered, hired).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'HireStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HireStatusDescriptor', @level2type=N'COLUMN', @level2name=N'HireStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HireStatusDescriptor', @level2type=N'COLUMN', @level2name=N'HireStatusTypeId'
GO


/****** Table: [extension].[HireStatusType] ******/

CREATE TABLE [extension].[HireStatusType](
    [HireStatusTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [HireStatusType_PK] PRIMARY KEY CLUSTERED (
        [HireStatusTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[HireStatusType] ADD CONSTRAINT [HireStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[HireStatusType] ADD CONSTRAINT [HireStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[HireStatusType] ADD CONSTRAINT [HireStatusType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the current status of the application for hire (e.g., applied, recommended, rejected, exited, offered, hired).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'HireStatusType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for HireStatus', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HireStatusType', @level2type=N'COLUMN', @level2name=N'HireStatusTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HireStatusType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the HireStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HireStatusType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the HireStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HireStatusType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[HiringSourceDescriptor] ******/

CREATE TABLE [extension].[HiringSourceDescriptor](
    [HiringSourceDescriptorId] [INT] NOT NULL,
    [HiringSourceTypeId] [INT] NULL,
    CONSTRAINT [HiringSourceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [HiringSourceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the source for the application (e.g.,job fair, website, referral, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'HiringSourceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HiringSourceDescriptor', @level2type=N'COLUMN', @level2name=N'HiringSourceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HiringSourceDescriptor', @level2type=N'COLUMN', @level2name=N'HiringSourceTypeId'
GO


/****** Table: [extension].[HiringSourceType] ******/

CREATE TABLE [extension].[HiringSourceType](
    [HiringSourceTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [HiringSourceType_PK] PRIMARY KEY CLUSTERED (
        [HiringSourceTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[HiringSourceType] ADD CONSTRAINT [HiringSourceType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[HiringSourceType] ADD CONSTRAINT [HiringSourceType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[HiringSourceType] ADD CONSTRAINT [HiringSourceType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the source for the application (e.g.,job fair, website, referral, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'HiringSourceType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for HiringSource', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HiringSourceType', @level2type=N'COLUMN', @level2name=N'HiringSourceTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HiringSourceType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the HiringSource type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HiringSourceType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the HiringSource type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'HiringSourceType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[InternalExternalHireType] ******/

CREATE TABLE [extension].[InternalExternalHireType](
    [InternalExternalHireTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [InternalExternalHireType_PK] PRIMARY KEY CLUSTERED (
        [InternalExternalHireTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[InternalExternalHireType] ADD CONSTRAINT [InternalExternalHireType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[InternalExternalHireType] ADD CONSTRAINT [InternalExternalHireType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[InternalExternalHireType] ADD CONSTRAINT [InternalExternalHireType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether the hire was an internal or external person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'InternalExternalHireType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for InternalExternalHire', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'InternalExternalHireType', @level2type=N'COLUMN', @level2name=N'InternalExternalHireTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'InternalExternalHireType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the InternalExternalHire type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'InternalExternalHireType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the InternalExternalHire type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'InternalExternalHireType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[LeaveEventExtension] ******/

CREATE TABLE [extension].[LeaveEventExtension](
    [EndDate] [DATE] NULL,
    [EventDate] [DATE] NOT NULL,
    [LeaveEventCategoryTypeId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    CONSTRAINT [LeaveEventExtension_PK] PRIMARY KEY CLUSTERED (
        [EventDate] ASC,
        [LeaveEventCategoryTypeId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'LeaveEventExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the leave.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LeaveEventExtension', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this leave event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LeaveEventExtension', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code describing the type of leave taken, for example:
Sick
Personal
Vacation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LeaveEventExtension', @level2type=N'COLUMN', @level2name=N'LeaveEventCategoryTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LeaveEventExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO


/****** Table: [extension].[LevelOfDegreeAwardedDescriptor] ******/

CREATE TABLE [extension].[LevelOfDegreeAwardedDescriptor](
    [LevelOfDegreeAwardedDescriptorId] [INT] NOT NULL,
    [LevelOfDegreeAwardedTypeId] [INT] NULL,
    CONSTRAINT [LevelOfDegreeAwardedDescriptor_PK] PRIMARY KEY CLUSTERED (
        [LevelOfDegreeAwardedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the level of degree awarded by the teacher prep program to the person (e.g., Certificate Only, Bachelor''s, Master''s, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'LevelOfDegreeAwardedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelOfDegreeAwardedDescriptor', @level2type=N'COLUMN', @level2name=N'LevelOfDegreeAwardedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelOfDegreeAwardedDescriptor', @level2type=N'COLUMN', @level2name=N'LevelOfDegreeAwardedTypeId'
GO


/****** Table: [extension].[LevelOfDegreeAwardedType] ******/

CREATE TABLE [extension].[LevelOfDegreeAwardedType](
    [LevelOfDegreeAwardedTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [LevelOfDegreeAwardedType_PK] PRIMARY KEY CLUSTERED (
        [LevelOfDegreeAwardedTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[LevelOfDegreeAwardedType] ADD CONSTRAINT [LevelOfDegreeAwardedType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[LevelOfDegreeAwardedType] ADD CONSTRAINT [LevelOfDegreeAwardedType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[LevelOfDegreeAwardedType] ADD CONSTRAINT [LevelOfDegreeAwardedType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the level of degree awarded by the teacher prep program to the person (e.g., Certificate Only, Bachelor''s, Master''s, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'LevelOfDegreeAwardedType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for LevelOfDegreeAwarded', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelOfDegreeAwardedType', @level2type=N'COLUMN', @level2name=N'LevelOfDegreeAwardedTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelOfDegreeAwardedType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the LevelOfDegreeAwarded type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelOfDegreeAwardedType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the LevelOfDegreeAwarded type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelOfDegreeAwardedType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[OpenStaffPositionEvent] ******/

CREATE TABLE [extension].[OpenStaffPositionEvent](
    [EventDate] [DATE] NOT NULL,
    [OpenStaffPositionEventTypeDescriptorId] [INT] NOT NULL,
    [OpenStaffPositionEventStatusDescriptorId] [INT] NULL,
    [RequisitionNumber] [NVARCHAR](20) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [OpenStaffPositionEvent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EventDate] ASC,
        [OpenStaffPositionEventTypeDescriptorId] ASC,
        [RequisitionNumber] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[OpenStaffPositionEvent] ADD CONSTRAINT [OpenStaffPositionEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[OpenStaffPositionEvent] ADD CONSTRAINT [OpenStaffPositionEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[OpenStaffPositionEvent] ADD CONSTRAINT [OpenStaffPositionEvent_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects milestones like vacancy approved, vacancy posted, date onboarded, processing date, orientation date, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'OpenStaffPositionEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of the open staff position event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects milestones like vacancy approved, vacancy posted, date onboarded, processing date, orientation date, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEvent', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionEventTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the status of the milestone (e.g., pending, completed, cancelled).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEvent', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionEventStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEvent', @level2type=N'COLUMN', @level2name=N'RequisitionNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEvent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[OpenStaffPositionEventStatusDescriptor] ******/

CREATE TABLE [extension].[OpenStaffPositionEventStatusDescriptor](
    [OpenStaffPositionEventStatusDescriptorId] [INT] NOT NULL,
    [OpenStaffPositionEventStatusTypeId] [INT] NULL,
    CONSTRAINT [OpenStaffPositionEventStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [OpenStaffPositionEventStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the status of the milestone (e.g., pending, completed, cancelled).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'OpenStaffPositionEventStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventStatusDescriptor', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionEventStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventStatusDescriptor', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionEventStatusTypeId'
GO


/****** Table: [extension].[OpenStaffPositionEventStatusType] ******/

CREATE TABLE [extension].[OpenStaffPositionEventStatusType](
    [OpenStaffPositionEventStatusTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [OpenStaffPositionEventStatusType_PK] PRIMARY KEY CLUSTERED (
        [OpenStaffPositionEventStatusTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[OpenStaffPositionEventStatusType] ADD CONSTRAINT [OpenStaffPositionEventStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[OpenStaffPositionEventStatusType] ADD CONSTRAINT [OpenStaffPositionEventStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[OpenStaffPositionEventStatusType] ADD CONSTRAINT [OpenStaffPositionEventStatusType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the status of the milestone (e.g., pending, completed, cancelled).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'OpenStaffPositionEventStatusType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for OpenStaffPositionEventStatus', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventStatusType', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionEventStatusTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventStatusType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the OpenStaffPositionEventStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventStatusType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the OpenStaffPositionEventStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventStatusType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[OpenStaffPositionEventType] ******/

CREATE TABLE [extension].[OpenStaffPositionEventType](
    [OpenStaffPositionEventTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [OpenStaffPositionEventType_PK] PRIMARY KEY CLUSTERED (
        [OpenStaffPositionEventTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[OpenStaffPositionEventType] ADD CONSTRAINT [OpenStaffPositionEventType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[OpenStaffPositionEventType] ADD CONSTRAINT [OpenStaffPositionEventType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[OpenStaffPositionEventType] ADD CONSTRAINT [OpenStaffPositionEventType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the milestones like vacancy approved, vacancy posted, date onboarded. processing date, orientation date  etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'OpenStaffPositionEventType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for OpenStaffPositionEvent', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventType', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionEventTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the OpenStaffPositionEvent type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the OpenStaffPositionEvent type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[OpenStaffPositionEventTypeDescriptor] ******/

CREATE TABLE [extension].[OpenStaffPositionEventTypeDescriptor](
    [OpenStaffPositionEventTypeDescriptorId] [INT] NOT NULL,
    [OpenStaffPositionEventTypeId] [INT] NULL,
    CONSTRAINT [OpenStaffPositionEventTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [OpenStaffPositionEventTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the milestones like vacancy approved, vacancy posted, date onboarded. processing date, orientation date  etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'OpenStaffPositionEventTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventTypeDescriptor', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionEventTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionEventTypeDescriptor', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionEventTypeId'
GO


/****** Table: [extension].[OpenStaffPositionExtension] ******/

CREATE TABLE [extension].[OpenStaffPositionExtension](
    [SchoolYear] [SMALLINT] NOT NULL,
    [FullTimeEquivalency] [DECIMAL](3, 2) NOT NULL,
    [OpenStaffPositionReasonDescriptorId] [INT] NULL,
    [IsActive] [BIT] NULL,
    [MaxSalary] [DECIMAL](9, 2) NULL,
    [MinSalary] [DECIMAL](9, 2) NULL,
    [FundingSourceDescriptorId] [INT] NULL,
    [HighNeedAcademicSubject] [BIT] NULL,
    [PositionControlNumber] [NVARCHAR](20) NULL,
    [TermDescriptorId] [INT] NULL,
    [TotalBudgeted] [DECIMAL](9, 2) NULL,
    [RequisitionNumber] [NVARCHAR](20) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    CONSTRAINT [OpenStaffPositionExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [RequisitionNumber] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'OpenStaffPositionExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year for which the OpenStaffPosition is seeking to fill.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'FullTimeEquivalency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reason for the open staff position (e.g., new position, replacement, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the OpenStaffPosition is currently Active.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'IsActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum salary or wage a person is paid before deductions (excluding differentials) but including annuities.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'MaxSalary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum salary or wage a person is paid before deductions (excluding differentials) but including annuities.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'MinSalary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The funding source for open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'FundingSourceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator as to whether the OpenStaffPosition is filling a high-need subject area designated as a teacher shortage that may be eligible for special grants, aid or compensation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'HighNeedAcademicSubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to the position to be filled.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'PositionControlNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first term for the Session during the school year for which the OpenStaffPosition is seeking to fill.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Including salary, the fully loaded cost budgeted for this teacher.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'TotalBudgeted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'RequisitionNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[OpenStaffPositionReasonDescriptor] ******/

CREATE TABLE [extension].[OpenStaffPositionReasonDescriptor](
    [OpenStaffPositionReasonDescriptorId] [INT] NOT NULL,
    [OpenStaffPositionReasonTypeId] [INT] NULL,
    CONSTRAINT [OpenStaffPositionReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [OpenStaffPositionReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the reason for the open staff position (e.g., new position, replacement, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'OpenStaffPositionReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionReasonDescriptor', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionReasonDescriptor', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionReasonTypeId'
GO


/****** Table: [extension].[OpenStaffPositionReasonType] ******/

CREATE TABLE [extension].[OpenStaffPositionReasonType](
    [OpenStaffPositionReasonTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [OpenStaffPositionReasonType_PK] PRIMARY KEY CLUSTERED (
        [OpenStaffPositionReasonTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[OpenStaffPositionReasonType] ADD CONSTRAINT [OpenStaffPositionReasonType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[OpenStaffPositionReasonType] ADD CONSTRAINT [OpenStaffPositionReasonType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[OpenStaffPositionReasonType] ADD CONSTRAINT [OpenStaffPositionReasonType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the reason for the open staff position (e.g., new position, replacement, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'OpenStaffPositionReasonType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for OpenStaffPositionReason', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionReasonType', @level2type=N'COLUMN', @level2name=N'OpenStaffPositionReasonTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionReasonType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the OpenStaffPositionReason type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionReasonType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the OpenStaffPositionReason type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'OpenStaffPositionReasonType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[Prospect] ******/

CREATE TABLE [extension].[Prospect](
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [MaidenName] [NVARCHAR](75) NULL,
    [ElectronicMailAddress] [NVARCHAR](128) NOT NULL,
    [Applied] [BIT] NULL,
    [HispanicLatinoEthnicity] [BIT] NULL,
    [Met] [BIT] NULL,
    [Notes] [NVARCHAR](255) NULL,
    [PreScreeningRating] [INT] NULL,
    [Referral] [BIT] NULL,
    [ReferredBy] [NVARCHAR](50) NULL,
    [SexTypeId] [INT] NULL,
    [SocialMediaUserName] [NVARCHAR](50) NULL,
    [SocialMediaNetworkName] [NVARCHAR](50) NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [Prospect_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[Prospect] ADD CONSTRAINT [Prospect_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[Prospect] ADD CONSTRAINT [Prospect_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[Prospect] ADD CONSTRAINT [Prospect_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prospect for employment or contract that has not yet made formal application, often obtained from job fairs or university recruiting visits.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'Prospect'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s maiden name.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'MaidenName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the prospect applied for a position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'Applied'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino".', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator whether the person was met by a representative of the education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'Met'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional notes about the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The rating initially assigned to the prospect prior to an official screening.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'PreScreeningRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the prospect was a referral.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'Referral'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person making the referral.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'ReferredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'SexTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user name of the person on social media.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'SocialMediaUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The social media network name (e.g., LinkedIn, Twitter, etc.) associated with the SocialMediaUserName.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'SocialMediaNetworkName'
GO


/****** Table: [extension].[ProspectCurrentPosition] ******/

CREATE TABLE [extension].[ProspectCurrentPosition](
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [Location] [NVARCHAR](75) NOT NULL,
    [PositionTitle] [NVARCHAR](100) NOT NULL,
    [AcademicSubjectDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ProspectCurrentPosition_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectCurrentPosition] ADD CONSTRAINT [ProspectCurrentPosition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current position of the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectCurrentPosition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The location, typically City and State, for the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name of an individual''s position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'PositionTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject the staff person''s assignment to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO


/****** Table: [extension].[ProspectCurrentPositionGradeLevel] ******/

CREATE TABLE [extension].[ProspectCurrentPositionGradeLevel](
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ProspectCurrentPositionGradeLevel_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [GradeLevelDescriptorId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectCurrentPositionGradeLevel] ADD CONSTRAINT [ProspectCurrentPositionGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of grade levels for which the individual''s assignment is responsible.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectCurrentPositionGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPositionGradeLevel', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPositionGradeLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of grade levels for which the individual''s assignment is responsible.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPositionGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO


/****** Table: [extension].[ProspectIdentificationDocument] ******/

CREATE TABLE [extension].[ProspectIdentificationDocument](
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [PersonalInformationVerificationTypeId] [INT] NOT NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [IdentificationDocumentUseTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ProspectIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IdentificationDocumentUseTypeId] ASC,
        [PersonalInformationVerificationTypeId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectIdentificationDocument] ADD CONSTRAINT [ProspectIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectIdentificationDocument', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectIdentificationDocument', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseTypeId'
GO


/****** Table: [extension].[ProspectRace] ******/

CREATE TABLE [extension].[ProspectRace](
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [RaceTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ProspectRace_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [ProspectIdentifier] ASC,
        [RaceTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectRace] ADD CONSTRAINT [ProspectRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRace', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRace', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRace', @level2type=N'COLUMN', @level2name=N'RaceTypeId'
GO


/****** Table: [extension].[ProspectRecruitmentEvent] ******/

CREATE TABLE [extension].[ProspectRecruitmentEvent](
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [EventDate] [DATE] NOT NULL,
    [EventTitle] [NVARCHAR](50) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ProspectRecruitmentEvent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EventDate] ASC,
        [EventTitle] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectRecruitmentEvent] ADD CONSTRAINT [ProspectRecruitmentEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reference(s) to events associated with the recruitment process.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectRecruitmentEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRecruitmentEvent', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EventTitle'
GO


/****** Table: [extension].[ProspectTelephone] ******/

CREATE TABLE [extension].[ProspectTelephone](
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [TelephoneNumber] [NVARCHAR](24) NOT NULL,
    [TelephoneNumberTypeId] [INT] NOT NULL,
    [OrderOfPriority] [INT] NULL,
    [TextMessageCapabilityIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ProspectTelephone_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [ProspectIdentifier] ASC,
        [TelephoneNumberTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectTelephone] ADD CONSTRAINT [ProspectTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 10-digit telephone number, including the area code, for the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumberTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'OrderOfPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'TextMessageCapabilityIndicator'
GO


/****** Table: [extension].[ProspectTouchpoint] ******/

CREATE TABLE [extension].[ProspectTouchpoint](
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [TouchpointContent] [NVARCHAR](255) NOT NULL,
    [TouchpointDate] [DATE] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [ProspectTouchpoint_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [ProspectIdentifier] ASC,
        [TouchpointContent] ASC,
        [TouchpointDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectTouchpoint] ADD CONSTRAINT [ProspectTouchpoint_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Content associated with different touchpoints with the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectTouchpoint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTouchpoint', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTouchpoint', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The content associated with or an artifact from the touchpoint.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTouchpoint', @level2type=N'COLUMN', @level2name=N'TouchpointContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the touchpoint.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTouchpoint', @level2type=N'COLUMN', @level2name=N'TouchpointDate'
GO


/****** Table: [extension].[QuestionFormType] ******/

CREATE TABLE [extension].[QuestionFormType](
    [QuestionFormTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [QuestionFormType_PK] PRIMARY KEY CLUSTERED (
        [QuestionFormTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[QuestionFormType] ADD CONSTRAINT [QuestionFormType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[QuestionFormType] ADD CONSTRAINT [QuestionFormType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[QuestionFormType] ADD CONSTRAINT [QuestionFormType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The form of question: 1) Radio box: multiple choice, single selection; 2) Checkbox: Multiple choice, multiple selection; 3) Dropdown: multiple choice, single selection; 4) Matrix, numeric rating scale; 5) Matrix of dropdowns; 6) Ranking; 7) Single textbox; 8) Matrix of text boxes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'QuestionFormType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for QuestionForm', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'QuestionFormType', @level2type=N'COLUMN', @level2name=N'QuestionFormTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'QuestionFormType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the QuestionForm type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'QuestionFormType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the QuestionForm type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'QuestionFormType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[RecruitmentEvent] ******/

CREATE TABLE [extension].[RecruitmentEvent](
    [EventDate] [DATE] NOT NULL,
    [EventDescription] [NVARCHAR](255) NULL,
    [EventTitle] [NVARCHAR](50) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [RecruitmentEvent_PK] PRIMARY KEY CLUSTERED (
        [EventDate] ASC,
        [EventTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[RecruitmentEvent] ADD CONSTRAINT [RecruitmentEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[RecruitmentEvent] ADD CONSTRAINT [RecruitmentEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[RecruitmentEvent] ADD CONSTRAINT [RecruitmentEvent_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Events associated with the recruitment process.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'RecruitmentEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The long description of the event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EventDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EventTitle'
GO


/****** Table: [extension].[StaffAbsenceEvent] ******/

CREATE TABLE [extension].[StaffAbsenceEvent](
    [EventDate] [DATE] NOT NULL,
    [AbsenceEventCategoryDescriptorId] [INT] NOT NULL,
    [AbsenceEventReason] [NVARCHAR](255) NULL,
    [HoursAbsent] [DECIMAL](3, 2) NULL,
    [StaffUSI] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [StaffAbsenceEvent_PK] PRIMARY KEY CLUSTERED (
        [AbsenceEventCategoryDescriptorId] ASC,
        [EventDate] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffAbsenceEvent] ADD CONSTRAINT [StaffAbsenceEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffAbsenceEvent] ADD CONSTRAINT [StaffAbsenceEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffAbsenceEvent] ADD CONSTRAINT [StaffAbsenceEvent_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents the recording of the date of staff absence (e.g., sick, personal, other).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffAbsenceEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this absence event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffAbsenceEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category describing the type of leave taken, for example: Sick, Personal, Vacation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffAbsenceEvent', @level2type=N'COLUMN', @level2name=N'AbsenceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Expanded reason for the staff absence.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffAbsenceEvent', @level2type=N'COLUMN', @level2name=N'AbsenceEventReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The hours the staff was absent, if not the entire working day.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffAbsenceEvent', @level2type=N'COLUMN', @level2name=N'HoursAbsent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffAbsenceEvent', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO


/****** Table: [extension].[StaffApplicant] ******/

CREATE TABLE [extension].[StaffApplicant](
    [StaffUSI] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [StaffApplicant_PK] PRIMARY KEY CLUSTERED (
        [ApplicantIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffApplicant] ADD CONSTRAINT [StaffApplicant_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reference to applicant(s) represented by this staff member.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffApplicant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffApplicant', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffApplicant', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffApplicant', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[StaffBackgroundCheck] ******/

CREATE TABLE [extension].[StaffBackgroundCheck](
    [StaffUSI] [INT] NOT NULL,
    [BackgroundCheckTypeDescriptorId] [INT] NOT NULL,
    [BackgroundCheckRequestedDate] [DATE] NOT NULL,
    [BackgroundCheckStatusDescriptorId] [INT] NULL,
    [BackgroundCheckCompletedDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [StaffBackgroundCheck_PK] PRIMARY KEY CLUSTERED (
        [BackgroundCheckTypeDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffBackgroundCheck] ADD CONSTRAINT [StaffBackgroundCheck_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Staff background check history and disposition.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffBackgroundCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffBackgroundCheck', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of background check (e.g., online, criminal, employment).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the background check was requested.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckRequestedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the background check (e.g., pending, under investigation, offense(s) found, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the background check was completed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckCompletedDate'
GO


/****** Table: [extension].[StaffEducationOrganizationEmploymentAssociationExtension] ******/

CREATE TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension](
    [EmploymentEventTypeDescriptorId] [INT] NULL,
    [RequisitionNumber] [NVARCHAR](20) NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [EmploymentSeparationDate] [DATE] NULL,
    [SchoolYear] [SMALLINT] NULL,
    [StaffUSI] [INT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of the employment event (e.g., transfer, new hire, title change).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EmploymentEventTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'RequisitionNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Effective date of the separation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EmploymentSeparationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for the employment association.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract; for example:
Probationary
Contractual
Substitute/temporary
Tenured or permanent
Volunteer/no contract
...', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'HireDate'
GO


/****** Table: [extension].[StaffEvaluation] ******/

CREATE TABLE [extension].[StaffEvaluation](
    [StaffEvaluationTitle] [NVARCHAR](50) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [MaxRating] [DECIMAL](6, 3) NOT NULL,
    [MinRating] [DECIMAL](6, 3) NULL,
    [StaffEvaluationPeriodDescriptorId] [INT] NULL,
    [StaffEvaluationTypeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [StaffEvaluation_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [StaffEvaluationTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluation] ADD CONSTRAINT [StaffEvaluation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffEvaluation] ADD CONSTRAINT [StaffEvaluation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffEvaluation] ADD CONSTRAINT [StaffEvaluation_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A staff evaluation instrument applied by an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluation', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the Staff evaluation is applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum summary numerical rating or score for the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluation', @level2type=N'COLUMN', @level2name=N'MaxRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum summary numerical rating or score for the staff evaluation. If omitted, assumed to be 0.0.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluation', @level2type=N'COLUMN', @level2name=N'MinRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The period for the staff evaluation (e.g., BOY, MOY, EOY, Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluation', @level2type=N'COLUMN', @level2name=N'StaffEvaluationPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of the staff evaluation (e.g., observation, principal, peer, student survey, student growth).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluation', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTypeDescriptorId'
GO


/****** Table: [extension].[StaffEvaluationComponent] ******/

CREATE TABLE [extension].[StaffEvaluationComponent](
    [EvaluationComponent] [NVARCHAR](50) NOT NULL,
    [MaxRating] [DECIMAL](6, 3) NOT NULL,
    [MinRating] [DECIMAL](6, 3) NULL,
    [RubricReference] [NVARCHAR](255) NULL,
    [StaffEvaluationTypeDescriptorId] [INT] NULL,
    [StaffEvaluationTitle] [NVARCHAR](50) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [StaffEvaluationComponent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EvaluationComponent] ASC,
        [SchoolYear] ASC,
        [StaffEvaluationTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluationComponent] ADD CONSTRAINT [StaffEvaluationComponent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffEvaluationComponent] ADD CONSTRAINT [StaffEvaluationComponent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffEvaluationComponent] ADD CONSTRAINT [StaffEvaluationComponent_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The components of the evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationComponent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Evaluation Component (e.g., Preparation, classroom control, delivery of instruction, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponent', @level2type=N'COLUMN', @level2name=N'EvaluationComponent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The max rating for the scale used for the Evaluation Component, if different from the overall staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponent', @level2type=N'COLUMN', @level2name=N'MaxRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum rating for the scale used for the Evaluation Component, if different from the overall staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponent', @level2type=N'COLUMN', @level2name=N'MinRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reference to rubric title or identifier.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponent', @level2type=N'COLUMN', @level2name=N'RubricReference'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of the staff evaluation (e.g., observation, principal, peer, student survey, student growth).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponent', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponent', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the Staff evaluation is applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponent', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[StaffEvaluationComponentRating] ******/

CREATE TABLE [extension].[StaffEvaluationComponentRating](
    [ComponentRating] [DECIMAL](6, 3) NOT NULL,
    [StaffEvaluationRatingLevelDescriptorId] [INT] NULL,
    [EvaluationComponent] [NVARCHAR](50) NOT NULL,
    [StaffEvaluationTitle] [NVARCHAR](50) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StaffEvaluationDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [StaffEvaluationComponentRating_PK] PRIMARY KEY CLUSTERED (
        [ComponentRating] ASC,
        [EducationOrganizationId] ASC,
        [EvaluationComponent] ASC,
        [SchoolYear] ASC,
        [StaffEvaluationDate] ASC,
        [StaffEvaluationTitle] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluationComponentRating] ADD CONSTRAINT [StaffEvaluationComponentRating_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffEvaluationComponentRating] ADD CONSTRAINT [StaffEvaluationComponentRating_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffEvaluationComponentRating] ADD CONSTRAINT [StaffEvaluationComponentRating_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The rating for the component parts of the evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationComponentRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Component Level rating.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentRating', @level2type=N'COLUMN', @level2name=N'ComponentRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The rating level achieved based upon the rating or score.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentRating', @level2type=N'COLUMN', @level2name=N'StaffEvaluationRatingLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Evaluation Component (e.g., Preparation, classroom control, delivery of instruction, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentRating', @level2type=N'COLUMN', @level2name=N'EvaluationComponent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentRating', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the Staff evaluation is applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentRating', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentRating', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentRating', @level2type=N'COLUMN', @level2name=N'StaffEvaluationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentRating', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO


/****** Table: [extension].[StaffEvaluationComponentStaffRatingLevel] ******/

CREATE TABLE [extension].[StaffEvaluationComponentStaffRatingLevel](
    [EvaluationComponent] [NVARCHAR](50) NOT NULL,
    [StaffEvaluationTitle] [NVARCHAR](50) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StaffEvaluationLevel] [NVARCHAR](50) NOT NULL,
    [MaxLevel] [DECIMAL](6, 3) NOT NULL,
    [MinLevel] [DECIMAL](6, 3) NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [StaffEvaluationComponentStaffRatingLevel_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EvaluationComponent] ASC,
        [SchoolYear] ASC,
        [StaffEvaluationLevel] ASC,
        [StaffEvaluationTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluationComponentStaffRatingLevel] ADD CONSTRAINT [StaffEvaluationComponentStaffRatingLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive level(s) of ratings (cut scores) for staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationComponentStaffRatingLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Evaluation Component (e.g., Preparation, classroom control, delivery of instruction, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'EvaluationComponent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the Staff evaluation is applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title for a level of rating or evaluation band (e.g., Excellent, Acceptable, Needs Improvement, Unacceptable).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'StaffEvaluationLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum rating to achieve the level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'MaxLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum rating to achieve the level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationComponentStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'MinLevel'
GO


/****** Table: [extension].[StaffEvaluationElement] ******/

CREATE TABLE [extension].[StaffEvaluationElement](
    [EvaluationElement] [NVARCHAR](255) NOT NULL,
    [MaxRating] [DECIMAL](6, 3) NOT NULL,
    [MinRating] [DECIMAL](6, 3) NULL,
    [RubricReference] [NVARCHAR](255) NULL,
    [EvaluationComponent] [NVARCHAR](50) NOT NULL,
    [StaffEvaluationTitle] [NVARCHAR](50) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [StaffEvaluationElement_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EvaluationComponent] ASC,
        [EvaluationElement] ASC,
        [SchoolYear] ASC,
        [StaffEvaluationTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluationElement] ADD CONSTRAINT [StaffEvaluationElement_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffEvaluationElement] ADD CONSTRAINT [StaffEvaluationElement_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffEvaluationElement] ADD CONSTRAINT [StaffEvaluationElement_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Evaluation Elements that are the parts of the Evaluation Component.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Evaluation Element name or title (e.g., Preparation, classroom control, delivery of instruction, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElement', @level2type=N'COLUMN', @level2name=N'EvaluationElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The max rating for the scale used for the Evaluation Component, if different from the overall staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElement', @level2type=N'COLUMN', @level2name=N'MaxRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum rating for the scale used for the Evaluation Component, if different from the overall staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElement', @level2type=N'COLUMN', @level2name=N'MinRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reference to rubric title or identifier.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElement', @level2type=N'COLUMN', @level2name=N'RubricReference'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Evaluation Component (e.g., Preparation, classroom control, delivery of instruction, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElement', @level2type=N'COLUMN', @level2name=N'EvaluationComponent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElement', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the Staff evaluation is applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElement', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElement', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[StaffEvaluationElementRating] ******/

CREATE TABLE [extension].[StaffEvaluationElementRating](
    [ElementRating] [DECIMAL](6, 3) NOT NULL,
    [StaffEvaluationRatingLevelDescriptorId] [INT] NULL,
    [EvaluationElement] [NVARCHAR](255) NOT NULL,
    [EvaluationComponent] [NVARCHAR](50) NOT NULL,
    [StaffEvaluationTitle] [NVARCHAR](50) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StaffEvaluationDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [StaffEvaluationElementRating_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EvaluationComponent] ASC,
        [EvaluationElement] ASC,
        [SchoolYear] ASC,
        [StaffEvaluationDate] ASC,
        [StaffEvaluationTitle] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluationElementRating] ADD CONSTRAINT [StaffEvaluationElementRating_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffEvaluationElementRating] ADD CONSTRAINT [StaffEvaluationElementRating_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffEvaluationElementRating] ADD CONSTRAINT [StaffEvaluationElementRating_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ratings for the individual elements of the evaluation component.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationElementRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Element Level rating.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementRating', @level2type=N'COLUMN', @level2name=N'ElementRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The rating level achieved based upon the rating or score.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementRating', @level2type=N'COLUMN', @level2name=N'StaffEvaluationRatingLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Evaluation Element name or title (e.g., Preparation, classroom control, delivery of instruction, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementRating', @level2type=N'COLUMN', @level2name=N'EvaluationElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Evaluation Component (e.g., Preparation, classroom control, delivery of instruction, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementRating', @level2type=N'COLUMN', @level2name=N'EvaluationComponent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementRating', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the Staff evaluation is applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementRating', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementRating', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementRating', @level2type=N'COLUMN', @level2name=N'StaffEvaluationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementRating', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO


/****** Table: [extension].[StaffEvaluationElementStaffRatingLevel] ******/

CREATE TABLE [extension].[StaffEvaluationElementStaffRatingLevel](
    [EvaluationElement] [NVARCHAR](255) NOT NULL,
    [EvaluationComponent] [NVARCHAR](50) NOT NULL,
    [StaffEvaluationTitle] [NVARCHAR](50) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StaffEvaluationLevel] [NVARCHAR](50) NOT NULL,
    [MaxLevel] [DECIMAL](6, 3) NOT NULL,
    [MinLevel] [DECIMAL](6, 3) NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [StaffEvaluationElementStaffRatingLevel_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EvaluationComponent] ASC,
        [EvaluationElement] ASC,
        [SchoolYear] ASC,
        [StaffEvaluationLevel] ASC,
        [StaffEvaluationTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluationElementStaffRatingLevel] ADD CONSTRAINT [StaffEvaluationElementStaffRatingLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive level(s) of ratings (cut scores) for staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationElementStaffRatingLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Evaluation Element name or title (e.g., Preparation, classroom control, delivery of instruction, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'EvaluationElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Evaluation Component (e.g., Preparation, classroom control, delivery of instruction, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'EvaluationComponent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the Staff evaluation is applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title for a level of rating or evaluation band (e.g., Excellent, Acceptable, Needs Improvement, Unacceptable).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'StaffEvaluationLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum rating to achieve the level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'MaxLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum rating to achieve the level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationElementStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'MinLevel'
GO


/****** Table: [extension].[StaffEvaluationPeriodDescriptor] ******/

CREATE TABLE [extension].[StaffEvaluationPeriodDescriptor](
    [StaffEvaluationPeriodDescriptorId] [INT] NOT NULL,
    [StaffEvaluationPeriodTypeId] [INT] NULL,
    CONSTRAINT [StaffEvaluationPeriodDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffEvaluationPeriodDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the period for the staff evaluation (e.g., BOY, MOY, EOY, Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationPeriodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationPeriodDescriptor', @level2type=N'COLUMN', @level2name=N'StaffEvaluationPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationPeriodDescriptor', @level2type=N'COLUMN', @level2name=N'StaffEvaluationPeriodTypeId'
GO


/****** Table: [extension].[StaffEvaluationPeriodType] ******/

CREATE TABLE [extension].[StaffEvaluationPeriodType](
    [StaffEvaluationPeriodTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [StaffEvaluationPeriodType_PK] PRIMARY KEY CLUSTERED (
        [StaffEvaluationPeriodTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluationPeriodType] ADD CONSTRAINT [StaffEvaluationPeriodType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffEvaluationPeriodType] ADD CONSTRAINT [StaffEvaluationPeriodType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffEvaluationPeriodType] ADD CONSTRAINT [StaffEvaluationPeriodType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the period for the staff evaluation (e.g., BOY, MOY, EOY, Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationPeriodType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for StaffEvaluationPeriod', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationPeriodType', @level2type=N'COLUMN', @level2name=N'StaffEvaluationPeriodTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationPeriodType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the StaffEvaluationPeriod type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationPeriodType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the StaffEvaluationPeriod type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationPeriodType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[StaffEvaluationRating] ******/

CREATE TABLE [extension].[StaffEvaluationRating](
    [Rating] [DECIMAL](6, 3) NOT NULL,
    [StaffEvaluationDate] [DATE] NOT NULL,
    [StaffEvaluationRatingLevelDescriptorId] [INT] NULL,
    [StaffUSI] [INT] NOT NULL,
    [EvaluatedByStaffUSI] [INT] NULL,
    [StaffEvaluationTitle] [NVARCHAR](50) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [StaffEvaluationRating_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [StaffEvaluationDate] ASC,
        [StaffEvaluationTitle] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluationRating] ADD CONSTRAINT [StaffEvaluationRating_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffEvaluationRating] ADD CONSTRAINT [StaffEvaluationRating_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffEvaluationRating] ADD CONSTRAINT [StaffEvaluationRating_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The summary rating for a staff evaluation applied to an individual educator.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numerical summary rating or score for the evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRating', @level2type=N'COLUMN', @level2name=N'Rating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRating', @level2type=N'COLUMN', @level2name=N'StaffEvaluationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The rating level achieved based upon the rating or score.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRating', @level2type=N'COLUMN', @level2name=N'StaffEvaluationRatingLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRating', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRating', @level2type=N'COLUMN', @level2name=N'EvaluatedByStaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRating', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the Staff evaluation is applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRating', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRating', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[StaffEvaluationRatingLevelDescriptor] ******/

CREATE TABLE [extension].[StaffEvaluationRatingLevelDescriptor](
    [StaffEvaluationRatingLevelDescriptorId] [INT] NOT NULL,
    [StaffEvaluationRatingLevelTypeId] [INT] NULL,
    CONSTRAINT [StaffEvaluationRatingLevelDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffEvaluationRatingLevelDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the rating level achieved based upon the rating or score.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationRatingLevelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRatingLevelDescriptor', @level2type=N'COLUMN', @level2name=N'StaffEvaluationRatingLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRatingLevelDescriptor', @level2type=N'COLUMN', @level2name=N'StaffEvaluationRatingLevelTypeId'
GO


/****** Table: [extension].[StaffEvaluationRatingLevelType] ******/

CREATE TABLE [extension].[StaffEvaluationRatingLevelType](
    [StaffEvaluationRatingLevelTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [StaffEvaluationRatingLevelType_PK] PRIMARY KEY CLUSTERED (
        [StaffEvaluationRatingLevelTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluationRatingLevelType] ADD CONSTRAINT [StaffEvaluationRatingLevelType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffEvaluationRatingLevelType] ADD CONSTRAINT [StaffEvaluationRatingLevelType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffEvaluationRatingLevelType] ADD CONSTRAINT [StaffEvaluationRatingLevelType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the rating level achieved based upon the rating or score.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationRatingLevelType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for StaffEvaluationRatingLevel', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRatingLevelType', @level2type=N'COLUMN', @level2name=N'StaffEvaluationRatingLevelTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRatingLevelType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the StaffEvaluationRatingLevel type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRatingLevelType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the StaffEvaluationRatingLevel type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationRatingLevelType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[StaffEvaluationStaffRatingLevel] ******/

CREATE TABLE [extension].[StaffEvaluationStaffRatingLevel](
    [StaffEvaluationTitle] [NVARCHAR](50) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StaffEvaluationLevel] [NVARCHAR](50) NOT NULL,
    [MaxLevel] [DECIMAL](6, 3) NOT NULL,
    [MinLevel] [DECIMAL](6, 3) NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [StaffEvaluationStaffRatingLevel_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [StaffEvaluationLevel] ASC,
        [StaffEvaluationTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluationStaffRatingLevel] ADD CONSTRAINT [StaffEvaluationStaffRatingLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive level(s) of ratings (cut scores) for staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationStaffRatingLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the staff evaluation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the Staff evaluation is applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title for a level of rating or evaluation band (e.g., Excellent, Acceptable, Needs Improvement, Unacceptable).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'StaffEvaluationLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum rating to achieve the level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'MaxLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum rating to achieve the level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationStaffRatingLevel', @level2type=N'COLUMN', @level2name=N'MinLevel'
GO


/****** Table: [extension].[StaffEvaluationType] ******/

CREATE TABLE [extension].[StaffEvaluationType](
    [StaffEvaluationTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [StaffEvaluationType_PK] PRIMARY KEY CLUSTERED (
        [StaffEvaluationTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEvaluationType] ADD CONSTRAINT [StaffEvaluationType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffEvaluationType] ADD CONSTRAINT [StaffEvaluationType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffEvaluationType] ADD CONSTRAINT [StaffEvaluationType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the  type of the staff evaluation (e.g., observation, principal, peer, student survey, student growth).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for StaffEvaluation', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationType', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the StaffEvaluation type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the StaffEvaluation type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[StaffEvaluationTypeDescriptor] ******/

CREATE TABLE [extension].[StaffEvaluationTypeDescriptor](
    [StaffEvaluationTypeDescriptorId] [INT] NOT NULL,
    [StaffEvaluationTypeId] [INT] NULL,
    CONSTRAINT [StaffEvaluationTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffEvaluationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the  type of the staff evaluation (e.g., observation, principal, peer, student survey, student growth).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEvaluationTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEvaluationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'StaffEvaluationTypeId'
GO


/****** Table: [extension].[StaffExtension] ******/

CREATE TABLE [extension].[StaffExtension](
    [ProbationCompleteDate] [DATE] NULL,
    [Tenured] [BIT] NULL,
    [StaffUSI] [INT] NOT NULL,
    CONSTRAINT [StaffExtension_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the probation period ended or is scheduled to end.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'ProbationCompleteDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the staff member is tenured.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'Tenured'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO


/****** Table: [extension].[StaffHighlyQualifiedAcademicSubject] ******/

CREATE TABLE [extension].[StaffHighlyQualifiedAcademicSubject](
    [StaffUSI] [INT] NOT NULL,
    [AcademicSubjectDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [StaffHighlyQualifiedAcademicSubject_PK] PRIMARY KEY CLUSTERED (
        [AcademicSubjectDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffHighlyQualifiedAcademicSubject] ADD CONSTRAINT [StaffHighlyQualifiedAcademicSubject_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject(s) in which the staff is deemed to be "highly qualified".', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffHighlyQualifiedAcademicSubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffHighlyQualifiedAcademicSubject', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject(s) in which the staff is deemed to be "highly qualified".', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffHighlyQualifiedAcademicSubject', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO


/****** Table: [extension].[StaffSeniority] ******/

CREATE TABLE [extension].[StaffSeniority](
    [StaffUSI] [INT] NOT NULL,
    [CredentialFieldDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [YearsExperience] [DECIMAL](5, 2) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [StaffSeniority_PK] PRIMARY KEY CLUSTERED (
        [CredentialFieldDescriptorId] ASC,
        [NameOfInstitution] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffSeniority] ADD CONSTRAINT [StaffSeniority_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entries of job experience contributing to computations of seniority.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffSeniority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSeniority', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The field of the credential being applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSeniority', @level2type=N'COLUMN', @level2name=N'CredentialFieldDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the education organization worked.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSeniority', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of years of experience.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSeniority', @level2type=N'COLUMN', @level2name=N'YearsExperience'
GO


/****** Table: [extension].[StaffTeacherPreparationProgram] ******/

CREATE TABLE [extension].[StaffTeacherPreparationProgram](
    [StaffUSI] [INT] NOT NULL,
    [TeacherPreparationProgramName] [NVARCHAR](75) NOT NULL,
    [TeacherPreparationProgramIdentifier] [NVARCHAR](75) NULL,
    [TeacherPreparationProgramTypeDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [MajorSpecialization] [NVARCHAR](75) NOT NULL,
    [GPA] [DECIMAL](18, 4) NULL,
    [LevelOfDegreeAwardedDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [StaffTeacherPreparationProgram_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC,
        [TeacherPreparationProgramName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProgram] ADD CONSTRAINT [StaffTeacherPreparationProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Teacher Preparation Program(s) completed by the teacher.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffTeacherPreparationProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Teacher Preparation Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier assigned to the teacher preparation program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of teacher prep program (e.g., college, alternative, TFA, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the organization providing the teacher preparation program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The major area for a degree or area of specialization for a certificate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'MajorSpecialization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final GPA for the teacher achieved in the program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'GPA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of degree awarded by the teacher preparation program to the person (e.g., Certificate Only, Bachelor''s, Master''s, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'LevelOfDegreeAwardedDescriptorId'
GO


/****** Table: [extension].[StaffTeacherPreparationProgramAddress] ******/

CREATE TABLE [extension].[StaffTeacherPreparationProgramAddress](
    [TeacherPreparationProgramName] [NVARCHAR](75) NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [ApartmentRoomSuiteNumber] [NVARCHAR](50) NULL,
    [BuildingSiteNumber] [NVARCHAR](20) NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [StateAbbreviationTypeId] [INT] NOT NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [NameOfCounty] [NVARCHAR](30) NULL,
    [CountyFIPSCode] [NVARCHAR](5) NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [AddressTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [StaffTeacherPreparationProgramAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeId] ASC,
        [StaffUSI] ASC,
        [TeacherPreparationProgramName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] ADD CONSTRAINT [StaffTeacherPreparationProgramAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The address of the institution providing the teacher prep program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffTeacherPreparationProgramAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Teacher Preparation Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeId'
GO


/****** Table: [extension].[Survey] ******/

CREATE TABLE [extension].[Survey](
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [SurveyTitle] [NVARCHAR](50) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NULL,
    [SurveyCategoryDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [Survey_PK] PRIMARY KEY CLUSTERED (
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[Survey] ADD CONSTRAINT [Survey_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[Survey] ADD CONSTRAINT [Survey_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[Survey] ADD CONSTRAINT [Survey_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A survey to identified or anonymous respondants.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'Survey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'SurveyTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year associated with the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Term the survey was given.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Category or Type of Survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'SurveyCategoryDescriptorId'
GO


/****** Table: [extension].[SurveyCategoryDescriptor] ******/

CREATE TABLE [extension].[SurveyCategoryDescriptor](
    [SurveyCategoryDescriptorId] [INT] NOT NULL,
    [SurveyCategoryTypeId] [INT] NULL,
    CONSTRAINT [SurveyCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SurveyCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the category or type of survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'SurveyCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'SurveyCategoryTypeId'
GO


/****** Table: [extension].[SurveyCategoryType] ******/

CREATE TABLE [extension].[SurveyCategoryType](
    [SurveyCategoryTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [SurveyCategoryType_PK] PRIMARY KEY CLUSTERED (
        [SurveyCategoryTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyCategoryType] ADD CONSTRAINT [SurveyCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveyCategoryType] ADD CONSTRAINT [SurveyCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveyCategoryType] ADD CONSTRAINT [SurveyCategoryType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the category or type of survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyCategoryType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for SurveyCategory', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryType', @level2type=N'COLUMN', @level2name=N'SurveyCategoryTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the SurveyCategory type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the SurveyCategory type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[SurveyQuestion] ******/

CREATE TABLE [extension].[SurveyQuestion](
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [QuestionFormTypeId] [INT] NOT NULL,
    [QuestionText] [NVARCHAR](255) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [SurveyQuestion_PK] PRIMARY KEY CLUSTERED (
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestion] ADD CONSTRAINT [SurveyQuestion_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveyQuestion] ADD CONSTRAINT [SurveyQuestion_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveyQuestion] ADD CONSTRAINT [SurveyQuestion_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The questions for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestion', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The form of question: 1) Radio box: multiple choice, single selection; 2) Checkbox: Multiple choice, multiple selection; 3) Dropdown: multiple choice, single selection; 4) Matrix, numeric rating scale; 5) Matrix of dropdowns; 6) Ranking; 7) Single textbox; 8) Matrix of text boxes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestion', @level2type=N'COLUMN', @level2name=N'QuestionFormTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text of the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestion', @level2type=N'COLUMN', @level2name=N'QuestionText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestion', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestion', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO


/****** Table: [extension].[SurveyQuestionMatrixElement] ******/

CREATE TABLE [extension].[SurveyQuestionMatrixElement](
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [MatrixElement] [NVARCHAR](50) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [SurveyQuestionMatrixElement_PK] PRIMARY KEY CLUSTERED (
        [MatrixElement] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestionMatrixElement] ADD CONSTRAINT [SurveyQuestionMatrixElement_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For matrix questions, the text identifying each row of the matrix.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestionMatrixElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionMatrixElement', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionMatrixElement', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For matrix questions, the text identifying each row of the matrix.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionMatrixElement', @level2type=N'COLUMN', @level2name=N'MatrixElement'
GO


/****** Table: [extension].[SurveyQuestionNumericChoice] ******/

CREATE TABLE [extension].[SurveyQuestionNumericChoice](
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [NumericChoice] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [SurveyQuestionNumericChoice_PK] PRIMARY KEY CLUSTERED (
        [NumericChoice] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestionNumericChoice] ADD CONSTRAINT [SurveyQuestionNumericChoice_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For matrix of rating scale and for ranking, the numeric choices.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestionNumericChoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionNumericChoice', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionNumericChoice', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For matrix of rating scale and for ranking, the numeric choices.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionNumericChoice', @level2type=N'COLUMN', @level2name=N'NumericChoice'
GO


/****** Table: [extension].[SurveyQuestionResponse] ******/

CREATE TABLE [extension].[SurveyQuestionResponse](
    [NoResponse] [BIT] NULL,
    [NumericResponse] [INT] NULL,
    [TextResponse] [NVARCHAR](255) NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveyResponseIdentifier] [NVARCHAR](64) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [SurveyQuestionResponse_PK] PRIMARY KEY CLUSTERED (
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC,
        [SurveyResponseIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestionResponse] ADD CONSTRAINT [SurveyQuestionResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveyQuestionResponse] ADD CONSTRAINT [SurveyQuestionResponse_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveyQuestionResponse] ADD CONSTRAINT [SurveyQuestionResponse_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The response to a survey question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestionResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates there was no response to the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'NoResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numeric response to the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'NumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text response(s) for the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'TextResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier of the survey typically from the survey application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'SurveyResponseIdentifier'
GO


/****** Table: [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] ******/

CREATE TABLE [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse](
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveyResponseIdentifier] [NVARCHAR](64) NOT NULL,
    [MatrixElement] [NVARCHAR](50) NOT NULL,
    [NoResponse] [BIT] NULL,
    [NumericResponse] [INT] NULL,
    [TextResponse] [NVARCHAR](255) NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [SurveyQuestionResponseSurveyQuestionMatrixElementResponse_PK] PRIMARY KEY CLUSTERED (
        [MatrixElement] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC,
        [SurveyResponseIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] ADD CONSTRAINT [SurveyQuestionResponseSurveyQuestionMatrixElementResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For matrix questions, the response for each row of the matrix.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier of the survey typically from the survey application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'SurveyResponseIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For matrix questions, the text identifying each row of the matrix.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'MatrixElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates there was no response to the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'NoResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numeric response to the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'NumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text response(s) for the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'TextResponse'
GO


/****** Table: [extension].[SurveyQuestionTextChoice] ******/

CREATE TABLE [extension].[SurveyQuestionTextChoice](
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [TextChoice] [NVARCHAR](50) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [SurveyQuestionTextChoice_PK] PRIMARY KEY CLUSTERED (
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC,
        [TextChoice] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestionTextChoice] ADD CONSTRAINT [SurveyQuestionTextChoice_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For radio buttons, checkboxes, dropdowns, matrix of drop downs - the list of choices.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestionTextChoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionTextChoice', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionTextChoice', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For radio buttons, checkboxes, dropdowns, matrix of drop downs - the list of choices.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionTextChoice', @level2type=N'COLUMN', @level2name=N'TextChoice'
GO


/****** Table: [extension].[SurveyResponse] ******/

CREATE TABLE [extension].[SurveyResponse](
    [SurveyResponseIdentifier] [NVARCHAR](64) NOT NULL,
    [ResponseDate] [DATE] NOT NULL,
    [ElectronicMailAddress] [NVARCHAR](128) NULL,
    [FullName] [NVARCHAR](80) NULL,
    [Location] [NVARCHAR](75) NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [StudentUSI] [INT] NULL,
    [ParentUSI] [INT] NULL,
    [StaffUSI] [INT] NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NULL,
    [EducationOrganizationId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [SurveyResponse_PK] PRIMARY KEY CLUSTERED (
        [SurveyIdentifier] ASC,
        [SurveyResponseIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyResponse] ADD CONSTRAINT [SurveyResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveyResponse] ADD CONSTRAINT [SurveyResponse_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveyResponse] ADD CONSTRAINT [SurveyResponse_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Responses to a Survey for named or anonymous persons.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier of the survey typically from the survey application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'SurveyResponseIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of the survey response.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'ResponseDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email address of the respondent.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full name of the respondent.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Location of the respondent, oten a citr, district, or school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[SurveySection] ******/

CREATE TABLE [extension].[SurveySection](
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [SurveySection_PK] PRIMARY KEY CLUSTERED (
        [SurveyIdentifier] ASC,
        [SurveySectionTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveySection] ADD CONSTRAINT [SurveySection_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveySection] ADD CONSTRAINT [SurveySection_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveySection] ADD CONSTRAINT [SurveySection_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The section(s) of questions for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveySection'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySection', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySection', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO


/****** Table: [extension].[SurveySectionResponseRating] ******/

CREATE TABLE [extension].[SurveySectionResponseRating](
    [SectionRating] [DECIMAL](9, 3) NOT NULL,
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveyResponseIdentifier] [NVARCHAR](64) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [SurveySectionResponseRating_PK] PRIMARY KEY CLUSTERED (
        [SurveyIdentifier] ASC,
        [SurveyResponseIdentifier] ASC,
        [SurveySectionTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveySectionResponseRating] ADD CONSTRAINT [SurveySectionResponseRating_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveySectionResponseRating] ADD CONSTRAINT [SurveySectionResponseRating_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveySectionResponseRating] ADD CONSTRAINT [SurveySectionResponseRating_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Optional numeric rating computed from the survey responses for the section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveySectionResponseRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numeric rating computed from the survey responses for the section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySectionResponseRating', @level2type=N'COLUMN', @level2name=N'SectionRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySectionResponseRating', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySectionResponseRating', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier of the survey typically from the survey application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySectionResponseRating', @level2type=N'COLUMN', @level2name=N'SurveyResponseIdentifier'
GO


/****** Table: [extension].[TalentManagementGoal] ******/

CREATE TABLE [extension].[TalentManagementGoal](
    [GoalTitle] [NVARCHAR](255) NOT NULL,
    [GoalValue] [DECIMAL](12, 3) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [TalentManagementGoal_PK] PRIMARY KEY CLUSTERED (
        [GoalTitle] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TalentManagementGoal] ADD CONSTRAINT [TalentManagementGoal_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TalentManagementGoal] ADD CONSTRAINT [TalentManagementGoal_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TalentManagementGoal] ADD CONSTRAINT [TalentManagementGoal_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Talent management goal(s) for education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TalentManagementGoal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or description of the goal.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TalentManagementGoal', @level2type=N'COLUMN', @level2name=N'GoalTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The target value for the goal.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TalentManagementGoal', @level2type=N'COLUMN', @level2name=N'GoalValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the Staff evaluation is applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TalentManagementGoal', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO


/****** Table: [extension].[TalentManagementGoalEducationOrganization] ******/

CREATE TABLE [extension].[TalentManagementGoalEducationOrganization](
    [GoalTitle] [NVARCHAR](255) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TalentManagementGoalEducationOrganization_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [GoalTitle] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TalentManagementGoalEducationOrganization] ADD CONSTRAINT [TalentManagementGoalEducationOrganization_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Education Organization(s) associated with the talent management goals.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TalentManagementGoalEducationOrganization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or description of the goal.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TalentManagementGoalEducationOrganization', @level2type=N'COLUMN', @level2name=N'GoalTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the Staff evaluation is applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TalentManagementGoalEducationOrganization', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education agency by the State Education Agency (SEA).  Also known as the State LEA ID.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TalentManagementGoalEducationOrganization', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO


/****** Table: [extension].[TeacherPreparationProgramType] ******/

CREATE TABLE [extension].[TeacherPreparationProgramType](
    [TeacherPreparationProgramTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [TeacherPreparationProgramType_PK] PRIMARY KEY CLUSTERED (
        [TeacherPreparationProgramTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherPreparationProgramType] ADD CONSTRAINT [TeacherPreparationProgramType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherPreparationProgramType] ADD CONSTRAINT [TeacherPreparationProgramType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherPreparationProgramType] ADD CONSTRAINT [TeacherPreparationProgramType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the type of teacher prep program (e.g., college, alternative, TFA, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherPreparationProgramType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for TeacherPreparationProgram', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramType', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the TeacherPreparationProgram type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the TeacherPreparationProgram type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[TeacherPreparationProgramTypeDescriptor] ******/

CREATE TABLE [extension].[TeacherPreparationProgramTypeDescriptor](
    [TeacherPreparationProgramTypeDescriptorId] [INT] NOT NULL,
    [TeacherPreparationProgramTypeId] [INT] NULL,
    CONSTRAINT [TeacherPreparationProgramTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TeacherPreparationProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of teacher prep program (e.g., college, alternative, TFA, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherPreparationProgramTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramTypeDescriptor', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramTypeDescriptor', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeId'
GO


/****** Table: [extension].[WithdrawReasonDescriptor] ******/

CREATE TABLE [extension].[WithdrawReasonDescriptor](
    [WithdrawReasonDescriptorId] [INT] NOT NULL,
    [WithdrawReasonTypeId] [INT] NULL,
    CONSTRAINT [WithdrawReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [WithdrawReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the reason applicant withdrew application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'WithdrawReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'WithdrawReasonDescriptor', @level2type=N'COLUMN', @level2name=N'WithdrawReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'WithdrawReasonDescriptor', @level2type=N'COLUMN', @level2name=N'WithdrawReasonTypeId'
GO


/****** Table: [extension].[WithdrawReasonType] ******/

CREATE TABLE [extension].[WithdrawReasonType](
    [WithdrawReasonTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [WithdrawReasonType_PK] PRIMARY KEY CLUSTERED (
        [WithdrawReasonTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[WithdrawReasonType] ADD CONSTRAINT [WithdrawReasonType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[WithdrawReasonType] ADD CONSTRAINT [WithdrawReasonType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[WithdrawReasonType] ADD CONSTRAINT [WithdrawReasonType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the reason applicant withdrew application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'WithdrawReasonType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for WithdrawReason', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'WithdrawReasonType', @level2type=N'COLUMN', @level2name=N'WithdrawReasonTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'WithdrawReasonType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the WithdrawReason type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'WithdrawReasonType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the WithdrawReason type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'WithdrawReasonType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO



ALTER TABLE [extension].[AbsenceEventCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_AbsenceEventCategoryDescriptor_AbsenceEventCategoryType] FOREIGN KEY ([AbsenceEventCategoryTypeId])
REFERENCES [extension].[AbsenceEventCategoryType] ([AbsenceEventCategoryTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_AbsenceEventCategoryDescriptor_AbsenceEventCategoryType]
ON [extension].[AbsenceEventCategoryDescriptor]([AbsenceEventCategoryTypeId] ASC)
GO

ALTER TABLE [extension].[AbsenceEventCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_AbsenceEventCategoryDescriptor_Descriptor] FOREIGN KEY ([AbsenceEventCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_AbsenceEventCategoryDescriptor_Descriptor]
ON [extension].[AbsenceEventCategoryDescriptor]([AbsenceEventCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_AcademicSubjectDescriptor] FOREIGN KEY ([HighlyQualifiedAcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_Applicant_AcademicSubjectDescriptor]
ON [extension].[Applicant]([HighlyQualifiedAcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_CitizenshipStatusType] FOREIGN KEY ([CitizenshipStatusTypeId])
REFERENCES [edfi].[CitizenshipStatusType] ([CitizenshipStatusTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_Applicant_CitizenshipStatusType]
ON [extension].[Applicant]([CitizenshipStatusTypeId] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])


GO

CREATE NONCLUSTERED INDEX [FK_Applicant_EducationOrganization]
ON [extension].[Applicant]([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_LevelOfEducationDescriptor] FOREIGN KEY ([HighestCompletedLevelOfEducationDescriptorId])
REFERENCES [edfi].[LevelOfEducationDescriptor] ([LevelOfEducationDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_Applicant_LevelOfEducationDescriptor]
ON [extension].[Applicant]([HighestCompletedLevelOfEducationDescriptorId] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_Prospect] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier])


GO

CREATE NONCLUSTERED INDEX [FK_Applicant_Prospect]
ON [extension].[Applicant]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_SexType] FOREIGN KEY ([SexTypeId])
REFERENCES [edfi].[SexType] ([SexTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_Applicant_SexType]
ON [extension].[Applicant]([SexTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantAddress_AddressType] FOREIGN KEY ([AddressTypeId])
REFERENCES [edfi].[AddressType] ([AddressTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantAddress_AddressType]
ON [extension].[ApplicantAddress]([AddressTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantAddress_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantAddress_Applicant]
ON [extension].[ApplicantAddress]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantAddress_StateAbbreviationType] FOREIGN KEY ([StateAbbreviationTypeId])
REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantAddress_StateAbbreviationType]
ON [extension].[ApplicantAddress]([StateAbbreviationTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_ApplicantBackgroundCheck_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantBackgroundCheck_Applicant]
ON [extension].[ApplicantBackgroundCheck]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_ApplicantBackgroundCheck_BackgroundCheckStatusDescriptor] FOREIGN KEY ([BackgroundCheckStatusDescriptorId])
REFERENCES [extension].[BackgroundCheckStatusDescriptor] ([BackgroundCheckStatusDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantBackgroundCheck_BackgroundCheckStatusDescriptor]
ON [extension].[ApplicantBackgroundCheck]([BackgroundCheckStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_ApplicantBackgroundCheck_BackgroundCheckTypeDescriptor] FOREIGN KEY ([BackgroundCheckTypeDescriptorId])
REFERENCES [extension].[BackgroundCheckTypeDescriptor] ([BackgroundCheckTypeDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantBackgroundCheck_BackgroundCheckTypeDescriptor]
ON [extension].[ApplicantBackgroundCheck]([BackgroundCheckTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK ADD CONSTRAINT [FK_ApplicantCredential_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_Applicant]
ON [extension].[ApplicantCredential]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK ADD CONSTRAINT [FK_ApplicantCredential_CredentialFieldDescriptor] FOREIGN KEY ([CredentialFieldDescriptorId])
REFERENCES [edfi].[CredentialFieldDescriptor] ([CredentialFieldDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_CredentialFieldDescriptor]
ON [extension].[ApplicantCredential]([CredentialFieldDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK ADD CONSTRAINT [FK_ApplicantCredential_CredentialType] FOREIGN KEY ([CredentialTypeId])
REFERENCES [edfi].[CredentialType] ([CredentialTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_CredentialType]
ON [extension].[ApplicantCredential]([CredentialTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK ADD CONSTRAINT [FK_ApplicantCredential_LevelDescriptor] FOREIGN KEY ([LevelDescriptorId])
REFERENCES [edfi].[LevelDescriptor] ([LevelDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_LevelDescriptor]
ON [extension].[ApplicantCredential]([LevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK ADD CONSTRAINT [FK_ApplicantCredential_StateAbbreviationType] FOREIGN KEY ([StateOfIssueStateAbbreviationTypeId])
REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_StateAbbreviationType]
ON [extension].[ApplicantCredential]([StateOfIssueStateAbbreviationTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK ADD CONSTRAINT [FK_ApplicantCredential_TeachingCredentialBasisType] FOREIGN KEY ([TeachingCredentialBasisTypeId])
REFERENCES [edfi].[TeachingCredentialBasisType] ([TeachingCredentialBasisTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_TeachingCredentialBasisType]
ON [extension].[ApplicantCredential]([TeachingCredentialBasisTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK ADD CONSTRAINT [FK_ApplicantCredential_TeachingCredentialDescriptor] FOREIGN KEY ([TeachingCredentialDescriptorId])
REFERENCES [edfi].[TeachingCredentialDescriptor] ([TeachingCredentialDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_TeachingCredentialDescriptor]
ON [extension].[ApplicantCredential]([TeachingCredentialDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantCredentialEndorsement] WITH CHECK ADD CONSTRAINT [FK_ApplicantCredentialEndorsement_ApplicantCredential] FOREIGN KEY ([ApplicantIdentifier], [CredentialFieldDescriptorId], [CredentialIssuanceDate], [CredentialTypeId], [EducationOrganizationId], [LevelDescriptorId], [TeachingCredentialDescriptorId])
REFERENCES [extension].[ApplicantCredential] ([ApplicantIdentifier], [CredentialFieldDescriptorId], [CredentialIssuanceDate], [CredentialTypeId], [EducationOrganizationId], [LevelDescriptorId], [TeachingCredentialDescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantCredentialEndorsement_ApplicantCredential]
ON [extension].[ApplicantCredentialEndorsement]([ApplicantIdentifier] ASC, [CredentialFieldDescriptorId] ASC, [CredentialIssuanceDate] ASC, [CredentialTypeId] ASC, [EducationOrganizationId] ASC, [LevelDescriptorId] ASC, [TeachingCredentialDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantElectronicMail] WITH CHECK ADD CONSTRAINT [FK_ApplicantElectronicMail_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantElectronicMail_Applicant]
ON [extension].[ApplicantElectronicMail]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantElectronicMail] WITH CHECK ADD CONSTRAINT [FK_ApplicantElectronicMail_ElectronicMailType] FOREIGN KEY ([ElectronicMailTypeId])
REFERENCES [edfi].[ElectronicMailType] ([ElectronicMailTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantElectronicMail_ElectronicMailType]
ON [extension].[ApplicantElectronicMail]([ElectronicMailTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantIdentificationDocument_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantIdentificationDocument_Applicant]
ON [extension].[ApplicantIdentificationDocument]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantIdentificationDocument_CountryDescriptor]
ON [extension].[ApplicantIdentificationDocument]([IssuerCountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantIdentificationDocument_IdentificationDocumentUseType] FOREIGN KEY ([IdentificationDocumentUseTypeId])
REFERENCES [edfi].[IdentificationDocumentUseType] ([IdentificationDocumentUseTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantIdentificationDocument_IdentificationDocumentUseType]
ON [extension].[ApplicantIdentificationDocument]([IdentificationDocumentUseTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantIdentificationDocument_PersonalInformationVerificationType] FOREIGN KEY ([PersonalInformationVerificationTypeId])
REFERENCES [edfi].[PersonalInformationVerificationType] ([PersonalInformationVerificationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantIdentificationDocument_PersonalInformationVerificationType]
ON [extension].[ApplicantIdentificationDocument]([PersonalInformationVerificationTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantInternationalAddress_AddressType] FOREIGN KEY ([AddressTypeId])
REFERENCES [edfi].[AddressType] ([AddressTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantInternationalAddress_AddressType]
ON [extension].[ApplicantInternationalAddress]([AddressTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantInternationalAddress_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantInternationalAddress_Applicant]
ON [extension].[ApplicantInternationalAddress]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantInternationalAddress_CountryDescriptor] FOREIGN KEY ([CountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantInternationalAddress_CountryDescriptor]
ON [extension].[ApplicantInternationalAddress]([CountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantLanguage] WITH CHECK ADD CONSTRAINT [FK_ApplicantLanguage_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantLanguage_Applicant]
ON [extension].[ApplicantLanguage]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantLanguage] WITH CHECK ADD CONSTRAINT [FK_ApplicantLanguage_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantLanguage_LanguageDescriptor]
ON [extension].[ApplicantLanguage]([LanguageDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantLanguageUse] WITH CHECK ADD CONSTRAINT [FK_ApplicantLanguageUse_ApplicantLanguage] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId], [LanguageDescriptorId])
REFERENCES [extension].[ApplicantLanguage] ([ApplicantIdentifier], [EducationOrganizationId], [LanguageDescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantLanguageUse_ApplicantLanguage]
ON [extension].[ApplicantLanguageUse]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC, [LanguageDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantLanguageUse] WITH CHECK ADD CONSTRAINT [FK_ApplicantLanguageUse_LanguageUseType] FOREIGN KEY ([LanguageUseTypeId])
REFERENCES [edfi].[LanguageUseType] ([LanguageUseTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantLanguageUse_LanguageUseType]
ON [extension].[ApplicantLanguageUse]([LanguageUseTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantRace] WITH CHECK ADD CONSTRAINT [FK_ApplicantRace_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantRace_Applicant]
ON [extension].[ApplicantRace]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantRace] WITH CHECK ADD CONSTRAINT [FK_ApplicantRace_RaceType] FOREIGN KEY ([RaceTypeId])
REFERENCES [edfi].[RaceType] ([RaceTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantRace_RaceType]
ON [extension].[ApplicantRace]([RaceTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantStaffIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_ApplicantStaffIdentificationCode_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantStaffIdentificationCode_Applicant]
ON [extension].[ApplicantStaffIdentificationCode]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantStaffIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_ApplicantStaffIdentificationCode_StaffIdentificationSystemDescriptor] FOREIGN KEY ([StaffIdentificationSystemDescriptorId])
REFERENCES [edfi].[StaffIdentificationSystemDescriptor] ([StaffIdentificationSystemDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantStaffIdentificationCode_StaffIdentificationSystemDescriptor]
ON [extension].[ApplicantStaffIdentificationCode]([StaffIdentificationSystemDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgram_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgram_Applicant]
ON [extension].[ApplicantTeacherPreparationProgram]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor] FOREIGN KEY ([LevelOfDegreeAwardedDescriptorId])
REFERENCES [extension].[LevelOfDegreeAwardedDescriptor] ([LevelOfDegreeAwardedDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor]
ON [extension].[ApplicantTeacherPreparationProgram]([LevelOfDegreeAwardedDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor] FOREIGN KEY ([TeacherPreparationProgramTypeDescriptorId])
REFERENCES [extension].[TeacherPreparationProgramTypeDescriptor] ([TeacherPreparationProgramTypeDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor]
ON [extension].[ApplicantTeacherPreparationProgram]([TeacherPreparationProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_AddressType] FOREIGN KEY ([AddressTypeId])
REFERENCES [edfi].[AddressType] ([AddressTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgramAddress_AddressType]
ON [extension].[ApplicantTeacherPreparationProgramAddress]([AddressTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_ApplicantTeacherPreparationProgram] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId], [TeacherPreparationProgramName])
REFERENCES [extension].[ApplicantTeacherPreparationProgram] ([ApplicantIdentifier], [EducationOrganizationId], [TeacherPreparationProgramName])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgramAddress_ApplicantTeacherPreparationProgram]
ON [extension].[ApplicantTeacherPreparationProgramAddress]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC, [TeacherPreparationProgramName] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_StateAbbreviationType] FOREIGN KEY ([StateAbbreviationTypeId])
REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgramAddress_StateAbbreviationType]
ON [extension].[ApplicantTeacherPreparationProgramAddress]([StateAbbreviationTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantTelephone] WITH CHECK ADD CONSTRAINT [FK_ApplicantTelephone_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTelephone_Applicant]
ON [extension].[ApplicantTelephone]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantTelephone] WITH CHECK ADD CONSTRAINT [FK_ApplicantTelephone_TelephoneNumberType] FOREIGN KEY ([TelephoneNumberTypeId])
REFERENCES [edfi].[TelephoneNumberType] ([TelephoneNumberTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTelephone_TelephoneNumberType]
ON [extension].[ApplicantTelephone]([TelephoneNumberTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicantVisa] WITH CHECK ADD CONSTRAINT [FK_ApplicantVisa_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicantVisa_Applicant]
ON [extension].[ApplicantVisa]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantVisa] WITH CHECK ADD CONSTRAINT [FK_ApplicantVisa_VisaType] FOREIGN KEY ([VisaTypeId])
REFERENCES [edfi].[VisaType] ([VisaTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicantVisa_VisaType]
ON [extension].[ApplicantVisa]([VisaTypeId] ASC)
GO

ALTER TABLE [extension].[Application] WITH CHECK ADD CONSTRAINT [FK_Application_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_Application_AcademicSubjectDescriptor]
ON [extension].[Application]([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[Application] WITH CHECK ADD CONSTRAINT [FK_Application_AcademicSubjectDescriptor1] FOREIGN KEY ([HighNeedsAcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_Application_AcademicSubjectDescriptor1]
ON [extension].[Application]([HighNeedsAcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[Application] WITH CHECK ADD CONSTRAINT [FK_Application_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])


GO

CREATE NONCLUSTERED INDEX [FK_Application_Applicant]
ON [extension].[Application]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[Application] WITH CHECK ADD CONSTRAINT [FK_Application_ApplicationSourceDescriptor] FOREIGN KEY ([ApplicationSourceDescriptorId])
REFERENCES [extension].[ApplicationSourceDescriptor] ([ApplicationSourceDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_Application_ApplicationSourceDescriptor]
ON [extension].[Application]([ApplicationSourceDescriptorId] ASC)
GO

ALTER TABLE [extension].[Application] WITH CHECK ADD CONSTRAINT [FK_Application_ApplicationStatusDescriptor] FOREIGN KEY ([ApplicationStatusDescriptorId])
REFERENCES [extension].[ApplicationStatusDescriptor] ([ApplicationStatusDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_Application_ApplicationStatusDescriptor]
ON [extension].[Application]([ApplicationStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[Application] WITH CHECK ADD CONSTRAINT [FK_Application_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])


GO

CREATE NONCLUSTERED INDEX [FK_Application_EducationOrganization]
ON [extension].[Application]([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[Application] WITH CHECK ADD CONSTRAINT [FK_Application_HireStatusDescriptor] FOREIGN KEY ([HireStatusDescriptorId])
REFERENCES [extension].[HireStatusDescriptor] ([HireStatusDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_Application_HireStatusDescriptor]
ON [extension].[Application]([HireStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[Application] WITH CHECK ADD CONSTRAINT [FK_Application_HiringSourceDescriptor] FOREIGN KEY ([HiringSourceDescriptorId])
REFERENCES [extension].[HiringSourceDescriptor] ([HiringSourceDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_Application_HiringSourceDescriptor]
ON [extension].[Application]([HiringSourceDescriptorId] ASC)
GO

ALTER TABLE [extension].[Application] WITH CHECK ADD CONSTRAINT [FK_Application_WithdrawReasonDescriptor] FOREIGN KEY ([WithdrawReasonDescriptorId])
REFERENCES [extension].[WithdrawReasonDescriptor] ([WithdrawReasonDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_Application_WithdrawReasonDescriptor]
ON [extension].[Application]([WithdrawReasonDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicationEvent] WITH CHECK ADD CONSTRAINT [FK_ApplicationEvent_Application] FOREIGN KEY ([ApplicationIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Application] ([ApplicationIdentifier], [EducationOrganizationId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicationEvent_Application]
ON [extension].[ApplicationEvent]([ApplicationIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicationEvent] WITH CHECK ADD CONSTRAINT [FK_ApplicationEvent_ApplicationEventResultDescriptor] FOREIGN KEY ([ApplicationEventResultDescriptorId])
REFERENCES [extension].[ApplicationEventResultDescriptor] ([ApplicationEventResultDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicationEvent_ApplicationEventResultDescriptor]
ON [extension].[ApplicationEvent]([ApplicationEventResultDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicationEvent] WITH CHECK ADD CONSTRAINT [FK_ApplicationEvent_ApplicationEventTypeDescriptor] FOREIGN KEY ([ApplicationEventTypeDescriptorId])
REFERENCES [extension].[ApplicationEventTypeDescriptor] ([ApplicationEventTypeDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicationEvent_ApplicationEventTypeDescriptor]
ON [extension].[ApplicationEvent]([ApplicationEventTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicationEventResultDescriptor] WITH CHECK ADD CONSTRAINT [FK_ApplicationEventResultDescriptor_ApplicationEventResultType] FOREIGN KEY ([ApplicationEventResultTypeId])
REFERENCES [extension].[ApplicationEventResultType] ([ApplicationEventResultTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicationEventResultDescriptor_ApplicationEventResultType]
ON [extension].[ApplicationEventResultDescriptor]([ApplicationEventResultTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicationEventResultDescriptor] WITH CHECK ADD CONSTRAINT [FK_ApplicationEventResultDescriptor_Descriptor] FOREIGN KEY ([ApplicationEventResultDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicationEventResultDescriptor_Descriptor]
ON [extension].[ApplicationEventResultDescriptor]([ApplicationEventResultDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicationEventTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ApplicationEventTypeDescriptor_ApplicationEventType] FOREIGN KEY ([ApplicationEventTypeId])
REFERENCES [extension].[ApplicationEventType] ([ApplicationEventTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicationEventTypeDescriptor_ApplicationEventType]
ON [extension].[ApplicationEventTypeDescriptor]([ApplicationEventTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicationEventTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ApplicationEventTypeDescriptor_Descriptor] FOREIGN KEY ([ApplicationEventTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicationEventTypeDescriptor_Descriptor]
ON [extension].[ApplicationEventTypeDescriptor]([ApplicationEventTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicationOpenStaffPosition] WITH CHECK ADD CONSTRAINT [FK_ApplicationOpenStaffPosition_Application] FOREIGN KEY ([ApplicationIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Application] ([ApplicationIdentifier], [EducationOrganizationId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicationOpenStaffPosition_Application]
ON [extension].[ApplicationOpenStaffPosition]([ApplicationIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicationOpenStaffPosition] WITH CHECK ADD CONSTRAINT [FK_ApplicationOpenStaffPosition_OpenStaffPosition] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber])
REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [RequisitionNumber])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicationOpenStaffPosition_OpenStaffPosition]
ON [extension].[ApplicationOpenStaffPosition]([EducationOrganizationId] ASC, [RequisitionNumber] ASC)
GO

ALTER TABLE [extension].[ApplicationSourceDescriptor] WITH CHECK ADD CONSTRAINT [FK_ApplicationSourceDescriptor_ApplicationSourceType] FOREIGN KEY ([ApplicationSourceTypeId])
REFERENCES [extension].[ApplicationSourceType] ([ApplicationSourceTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicationSourceDescriptor_ApplicationSourceType]
ON [extension].[ApplicationSourceDescriptor]([ApplicationSourceTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicationSourceDescriptor] WITH CHECK ADD CONSTRAINT [FK_ApplicationSourceDescriptor_Descriptor] FOREIGN KEY ([ApplicationSourceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicationSourceDescriptor_Descriptor]
ON [extension].[ApplicationSourceDescriptor]([ApplicationSourceDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicationStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_ApplicationStatusDescriptor_ApplicationStatusType] FOREIGN KEY ([ApplicationStatusTypeId])
REFERENCES [extension].[ApplicationStatusType] ([ApplicationStatusTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ApplicationStatusDescriptor_ApplicationStatusType]
ON [extension].[ApplicationStatusDescriptor]([ApplicationStatusTypeId] ASC)
GO

ALTER TABLE [extension].[ApplicationStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_ApplicationStatusDescriptor_Descriptor] FOREIGN KEY ([ApplicationStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ApplicationStatusDescriptor_Descriptor]
ON [extension].[ApplicationStatusDescriptor]([ApplicationStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[BackgroundCheckStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_BackgroundCheckStatusDescriptor_BackgroundCheckStatusType] FOREIGN KEY ([BackgroundCheckStatusTypeId])
REFERENCES [extension].[BackgroundCheckStatusType] ([BackgroundCheckStatusTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_BackgroundCheckStatusDescriptor_BackgroundCheckStatusType]
ON [extension].[BackgroundCheckStatusDescriptor]([BackgroundCheckStatusTypeId] ASC)
GO

ALTER TABLE [extension].[BackgroundCheckStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_BackgroundCheckStatusDescriptor_Descriptor] FOREIGN KEY ([BackgroundCheckStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_BackgroundCheckStatusDescriptor_Descriptor]
ON [extension].[BackgroundCheckStatusDescriptor]([BackgroundCheckStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[BackgroundCheckTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_BackgroundCheckTypeDescriptor_BackgroundCheckType] FOREIGN KEY ([BackgroundCheckTypeId])
REFERENCES [extension].[BackgroundCheckType] ([BackgroundCheckTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_BackgroundCheckTypeDescriptor_BackgroundCheckType]
ON [extension].[BackgroundCheckTypeDescriptor]([BackgroundCheckTypeId] ASC)
GO

ALTER TABLE [extension].[BackgroundCheckTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_BackgroundCheckTypeDescriptor_Descriptor] FOREIGN KEY ([BackgroundCheckTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_BackgroundCheckTypeDescriptor_Descriptor]
ON [extension].[BackgroundCheckTypeDescriptor]([BackgroundCheckTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationFacts_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])


GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationFacts_EducationOrganization]
ON [extension].[EducationOrganizationFacts]([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationFacts_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])


GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationFacts_SchoolYearType]
ON [extension].[EducationOrganizationFacts]([SchoolYear] ASC)
GO

ALTER TABLE [extension].[EmploymentEvent] WITH CHECK ADD CONSTRAINT [FK_EmploymentEvent_EmploymentEventTypeDescriptor] FOREIGN KEY ([EmploymentEventTypeDescriptorId])
REFERENCES [extension].[EmploymentEventTypeDescriptor] ([EmploymentEventTypeDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_EmploymentEvent_EmploymentEventTypeDescriptor]
ON [extension].[EmploymentEvent]([EmploymentEventTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EmploymentEvent] WITH CHECK ADD CONSTRAINT [FK_EmploymentEvent_InternalExternalHireType] FOREIGN KEY ([InternalExternalHireTypeId])
REFERENCES [extension].[InternalExternalHireType] ([InternalExternalHireTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_EmploymentEvent_InternalExternalHireType]
ON [extension].[EmploymentEvent]([InternalExternalHireTypeId] ASC)
GO

ALTER TABLE [extension].[EmploymentEvent] WITH CHECK ADD CONSTRAINT [FK_EmploymentEvent_OpenStaffPosition] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber])
REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [RequisitionNumber])


GO

CREATE NONCLUSTERED INDEX [FK_EmploymentEvent_OpenStaffPosition]
ON [extension].[EmploymentEvent]([EducationOrganizationId] ASC, [RequisitionNumber] ASC)
GO

ALTER TABLE [extension].[EmploymentEventTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_EmploymentEventTypeDescriptor_Descriptor] FOREIGN KEY ([EmploymentEventTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_EmploymentEventTypeDescriptor_Descriptor]
ON [extension].[EmploymentEventTypeDescriptor]([EmploymentEventTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EmploymentEventTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_EmploymentEventTypeDescriptor_EmploymentEventType] FOREIGN KEY ([EmploymentEventTypeId])
REFERENCES [extension].[EmploymentEventType] ([EmploymentEventTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_EmploymentEventTypeDescriptor_EmploymentEventType]
ON [extension].[EmploymentEventTypeDescriptor]([EmploymentEventTypeId] ASC)
GO

ALTER TABLE [extension].[EmploymentSeparationEvent] WITH CHECK ADD CONSTRAINT [FK_EmploymentSeparationEvent_EmploymentSeparationReasonDescriptor] FOREIGN KEY ([EmploymentSeparationReasonDescriptorId])
REFERENCES [extension].[EmploymentSeparationReasonDescriptor] ([EmploymentSeparationReasonDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_EmploymentSeparationEvent_EmploymentSeparationReasonDescriptor]
ON [extension].[EmploymentSeparationEvent]([EmploymentSeparationReasonDescriptorId] ASC)
GO

ALTER TABLE [extension].[EmploymentSeparationEvent] WITH CHECK ADD CONSTRAINT [FK_EmploymentSeparationEvent_EmploymentSeparationTypeDescriptor] FOREIGN KEY ([EmploymentSeparationTypeDescriptorId])
REFERENCES [extension].[EmploymentSeparationTypeDescriptor] ([EmploymentSeparationTypeDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_EmploymentSeparationEvent_EmploymentSeparationTypeDescriptor]
ON [extension].[EmploymentSeparationEvent]([EmploymentSeparationTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EmploymentSeparationEvent] WITH CHECK ADD CONSTRAINT [FK_EmploymentSeparationEvent_OpenStaffPosition] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber])
REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [RequisitionNumber])


GO

CREATE NONCLUSTERED INDEX [FK_EmploymentSeparationEvent_OpenStaffPosition]
ON [extension].[EmploymentSeparationEvent]([EducationOrganizationId] ASC, [RequisitionNumber] ASC)
GO

ALTER TABLE [extension].[EmploymentSeparationReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_EmploymentSeparationReasonDescriptor_Descriptor] FOREIGN KEY ([EmploymentSeparationReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_EmploymentSeparationReasonDescriptor_Descriptor]
ON [extension].[EmploymentSeparationReasonDescriptor]([EmploymentSeparationReasonDescriptorId] ASC)
GO

ALTER TABLE [extension].[EmploymentSeparationReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_EmploymentSeparationReasonDescriptor_EmploymentSeparationReasonType] FOREIGN KEY ([EmploymentSeparationReasonTypeId])
REFERENCES [extension].[EmploymentSeparationReasonType] ([EmploymentSeparationReasonTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_EmploymentSeparationReasonDescriptor_EmploymentSeparationReasonType]
ON [extension].[EmploymentSeparationReasonDescriptor]([EmploymentSeparationReasonTypeId] ASC)
GO

ALTER TABLE [extension].[EmploymentSeparationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_EmploymentSeparationTypeDescriptor_Descriptor] FOREIGN KEY ([EmploymentSeparationTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_EmploymentSeparationTypeDescriptor_Descriptor]
ON [extension].[EmploymentSeparationTypeDescriptor]([EmploymentSeparationTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EmploymentSeparationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_EmploymentSeparationTypeDescriptor_EmploymentSeparationType] FOREIGN KEY ([EmploymentSeparationTypeId])
REFERENCES [extension].[EmploymentSeparationType] ([EmploymentSeparationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_EmploymentSeparationTypeDescriptor_EmploymentSeparationType]
ON [extension].[EmploymentSeparationTypeDescriptor]([EmploymentSeparationTypeId] ASC)
GO

ALTER TABLE [extension].[FundingSourceDescriptor] WITH CHECK ADD CONSTRAINT [FK_FundingSourceDescriptor_Descriptor] FOREIGN KEY ([FundingSourceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_FundingSourceDescriptor_Descriptor]
ON [extension].[FundingSourceDescriptor]([FundingSourceDescriptorId] ASC)
GO

ALTER TABLE [extension].[FundingSourceDescriptor] WITH CHECK ADD CONSTRAINT [FK_FundingSourceDescriptor_FundingSourceType] FOREIGN KEY ([FundingSourceTypeId])
REFERENCES [extension].[FundingSourceType] ([FundingSourceTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_FundingSourceDescriptor_FundingSourceType]
ON [extension].[FundingSourceDescriptor]([FundingSourceTypeId] ASC)
GO

ALTER TABLE [extension].[HireStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_HireStatusDescriptor_Descriptor] FOREIGN KEY ([HireStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_HireStatusDescriptor_Descriptor]
ON [extension].[HireStatusDescriptor]([HireStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[HireStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_HireStatusDescriptor_HireStatusType] FOREIGN KEY ([HireStatusTypeId])
REFERENCES [extension].[HireStatusType] ([HireStatusTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_HireStatusDescriptor_HireStatusType]
ON [extension].[HireStatusDescriptor]([HireStatusTypeId] ASC)
GO

ALTER TABLE [extension].[HiringSourceDescriptor] WITH CHECK ADD CONSTRAINT [FK_HiringSourceDescriptor_Descriptor] FOREIGN KEY ([HiringSourceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_HiringSourceDescriptor_Descriptor]
ON [extension].[HiringSourceDescriptor]([HiringSourceDescriptorId] ASC)
GO

ALTER TABLE [extension].[HiringSourceDescriptor] WITH CHECK ADD CONSTRAINT [FK_HiringSourceDescriptor_HiringSourceType] FOREIGN KEY ([HiringSourceTypeId])
REFERENCES [extension].[HiringSourceType] ([HiringSourceTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_HiringSourceDescriptor_HiringSourceType]
ON [extension].[HiringSourceDescriptor]([HiringSourceTypeId] ASC)
GO

ALTER TABLE [extension].[LeaveEventExtension] WITH CHECK ADD CONSTRAINT [FK_LeaveEventExtension_LeaveEvent] FOREIGN KEY ([EventDate], [LeaveEventCategoryTypeId], [StaffUSI])
REFERENCES [edfi].[LeaveEvent] ([EventDate], [LeaveEventCategoryTypeId], [StaffUSI])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_LeaveEventExtension_LeaveEvent]
ON [extension].[LeaveEventExtension]([EventDate] ASC, [LeaveEventCategoryTypeId] ASC, [StaffUSI] ASC)
GO

ALTER TABLE [extension].[LevelOfDegreeAwardedDescriptor] WITH CHECK ADD CONSTRAINT [FK_LevelOfDegreeAwardedDescriptor_Descriptor] FOREIGN KEY ([LevelOfDegreeAwardedDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_LevelOfDegreeAwardedDescriptor_Descriptor]
ON [extension].[LevelOfDegreeAwardedDescriptor]([LevelOfDegreeAwardedDescriptorId] ASC)
GO

ALTER TABLE [extension].[LevelOfDegreeAwardedDescriptor] WITH CHECK ADD CONSTRAINT [FK_LevelOfDegreeAwardedDescriptor_LevelOfDegreeAwardedType] FOREIGN KEY ([LevelOfDegreeAwardedTypeId])
REFERENCES [extension].[LevelOfDegreeAwardedType] ([LevelOfDegreeAwardedTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_LevelOfDegreeAwardedDescriptor_LevelOfDegreeAwardedType]
ON [extension].[LevelOfDegreeAwardedDescriptor]([LevelOfDegreeAwardedTypeId] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionEvent] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionEvent_OpenStaffPosition] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber])
REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [RequisitionNumber])


GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionEvent_OpenStaffPosition]
ON [extension].[OpenStaffPositionEvent]([EducationOrganizationId] ASC, [RequisitionNumber] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionEvent] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionEvent_OpenStaffPositionEventStatusDescriptor] FOREIGN KEY ([OpenStaffPositionEventStatusDescriptorId])
REFERENCES [extension].[OpenStaffPositionEventStatusDescriptor] ([OpenStaffPositionEventStatusDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionEvent_OpenStaffPositionEventStatusDescriptor]
ON [extension].[OpenStaffPositionEvent]([OpenStaffPositionEventStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionEvent] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionEvent_OpenStaffPositionEventTypeDescriptor] FOREIGN KEY ([OpenStaffPositionEventTypeDescriptorId])
REFERENCES [extension].[OpenStaffPositionEventTypeDescriptor] ([OpenStaffPositionEventTypeDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionEvent_OpenStaffPositionEventTypeDescriptor]
ON [extension].[OpenStaffPositionEvent]([OpenStaffPositionEventTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionEventStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionEventStatusDescriptor_Descriptor] FOREIGN KEY ([OpenStaffPositionEventStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionEventStatusDescriptor_Descriptor]
ON [extension].[OpenStaffPositionEventStatusDescriptor]([OpenStaffPositionEventStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionEventStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionEventStatusDescriptor_OpenStaffPositionEventStatusType] FOREIGN KEY ([OpenStaffPositionEventStatusTypeId])
REFERENCES [extension].[OpenStaffPositionEventStatusType] ([OpenStaffPositionEventStatusTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionEventStatusDescriptor_OpenStaffPositionEventStatusType]
ON [extension].[OpenStaffPositionEventStatusDescriptor]([OpenStaffPositionEventStatusTypeId] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionEventTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionEventTypeDescriptor_Descriptor] FOREIGN KEY ([OpenStaffPositionEventTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionEventTypeDescriptor_Descriptor]
ON [extension].[OpenStaffPositionEventTypeDescriptor]([OpenStaffPositionEventTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionEventTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionEventTypeDescriptor_OpenStaffPositionEventType] FOREIGN KEY ([OpenStaffPositionEventTypeId])
REFERENCES [extension].[OpenStaffPositionEventType] ([OpenStaffPositionEventTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionEventTypeDescriptor_OpenStaffPositionEventType]
ON [extension].[OpenStaffPositionEventTypeDescriptor]([OpenStaffPositionEventTypeId] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionExtension] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionExtension_FundingSourceDescriptor] FOREIGN KEY ([FundingSourceDescriptorId])
REFERENCES [extension].[FundingSourceDescriptor] ([FundingSourceDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionExtension_FundingSourceDescriptor]
ON [extension].[OpenStaffPositionExtension]([FundingSourceDescriptorId] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionExtension] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionExtension_OpenStaffPosition] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber])
REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [RequisitionNumber])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionExtension_OpenStaffPosition]
ON [extension].[OpenStaffPositionExtension]([EducationOrganizationId] ASC, [RequisitionNumber] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionExtension] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionExtension_OpenStaffPositionReasonDescriptor] FOREIGN KEY ([OpenStaffPositionReasonDescriptorId])
REFERENCES [extension].[OpenStaffPositionReasonDescriptor] ([OpenStaffPositionReasonDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionExtension_OpenStaffPositionReasonDescriptor]
ON [extension].[OpenStaffPositionExtension]([OpenStaffPositionReasonDescriptorId] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionExtension] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionExtension_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])


GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionExtension_SchoolYearType]
ON [extension].[OpenStaffPositionExtension]([SchoolYear] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionExtension] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionExtension_TermDescriptor] FOREIGN KEY ([TermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionExtension_TermDescriptor]
ON [extension].[OpenStaffPositionExtension]([TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionReasonDescriptor_Descriptor] FOREIGN KEY ([OpenStaffPositionReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionReasonDescriptor_Descriptor]
ON [extension].[OpenStaffPositionReasonDescriptor]([OpenStaffPositionReasonDescriptorId] ASC)
GO

ALTER TABLE [extension].[OpenStaffPositionReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_OpenStaffPositionReasonDescriptor_OpenStaffPositionReasonType] FOREIGN KEY ([OpenStaffPositionReasonTypeId])
REFERENCES [extension].[OpenStaffPositionReasonType] ([OpenStaffPositionReasonTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionReasonDescriptor_OpenStaffPositionReasonType]
ON [extension].[OpenStaffPositionReasonDescriptor]([OpenStaffPositionReasonTypeId] ASC)
GO

ALTER TABLE [extension].[Prospect] WITH CHECK ADD CONSTRAINT [FK_Prospect_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])


GO

CREATE NONCLUSTERED INDEX [FK_Prospect_EducationOrganization]
ON [extension].[Prospect]([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[Prospect] WITH CHECK ADD CONSTRAINT [FK_Prospect_SexType] FOREIGN KEY ([SexTypeId])
REFERENCES [edfi].[SexType] ([SexTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_Prospect_SexType]
ON [extension].[Prospect]([SexTypeId] ASC)
GO

ALTER TABLE [extension].[ProspectCurrentPosition] WITH CHECK ADD CONSTRAINT [FK_ProspectCurrentPosition_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ProspectCurrentPosition_AcademicSubjectDescriptor]
ON [extension].[ProspectCurrentPosition]([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectCurrentPosition] WITH CHECK ADD CONSTRAINT [FK_ProspectCurrentPosition_Prospect] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ProspectCurrentPosition_Prospect]
ON [extension].[ProspectCurrentPosition]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectCurrentPositionGradeLevel] WITH CHECK ADD CONSTRAINT [FK_ProspectCurrentPositionGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ProspectCurrentPositionGradeLevel_GradeLevelDescriptor]
ON [extension].[ProspectCurrentPositionGradeLevel]([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectCurrentPositionGradeLevel] WITH CHECK ADD CONSTRAINT [FK_ProspectCurrentPositionGradeLevel_ProspectCurrentPosition] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[ProspectCurrentPosition] ([EducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ProspectCurrentPositionGradeLevel_ProspectCurrentPosition]
ON [extension].[ProspectCurrentPositionGradeLevel]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ProspectIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_ProspectIdentificationDocument_CountryDescriptor]
ON [extension].[ProspectIdentificationDocument]([IssuerCountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ProspectIdentificationDocument_IdentificationDocumentUseType] FOREIGN KEY ([IdentificationDocumentUseTypeId])
REFERENCES [edfi].[IdentificationDocumentUseType] ([IdentificationDocumentUseTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ProspectIdentificationDocument_IdentificationDocumentUseType]
ON [extension].[ProspectIdentificationDocument]([IdentificationDocumentUseTypeId] ASC)
GO

ALTER TABLE [extension].[ProspectIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ProspectIdentificationDocument_PersonalInformationVerificationType] FOREIGN KEY ([PersonalInformationVerificationTypeId])
REFERENCES [edfi].[PersonalInformationVerificationType] ([PersonalInformationVerificationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ProspectIdentificationDocument_PersonalInformationVerificationType]
ON [extension].[ProspectIdentificationDocument]([PersonalInformationVerificationTypeId] ASC)
GO

ALTER TABLE [extension].[ProspectIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ProspectIdentificationDocument_Prospect] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ProspectIdentificationDocument_Prospect]
ON [extension].[ProspectIdentificationDocument]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectRace] WITH CHECK ADD CONSTRAINT [FK_ProspectRace_Prospect] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ProspectRace_Prospect]
ON [extension].[ProspectRace]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectRace] WITH CHECK ADD CONSTRAINT [FK_ProspectRace_RaceType] FOREIGN KEY ([RaceTypeId])
REFERENCES [edfi].[RaceType] ([RaceTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ProspectRace_RaceType]
ON [extension].[ProspectRace]([RaceTypeId] ASC)
GO

ALTER TABLE [extension].[ProspectRecruitmentEvent] WITH CHECK ADD CONSTRAINT [FK_ProspectRecruitmentEvent_Prospect] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ProspectRecruitmentEvent_Prospect]
ON [extension].[ProspectRecruitmentEvent]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectRecruitmentEvent] WITH CHECK ADD CONSTRAINT [FK_ProspectRecruitmentEvent_RecruitmentEvent] FOREIGN KEY ([EventDate], [EventTitle])
REFERENCES [extension].[RecruitmentEvent] ([EventDate], [EventTitle])


GO

CREATE NONCLUSTERED INDEX [FK_ProspectRecruitmentEvent_RecruitmentEvent]
ON [extension].[ProspectRecruitmentEvent]([EventDate] ASC, [EventTitle] ASC)
GO

ALTER TABLE [extension].[ProspectTelephone] WITH CHECK ADD CONSTRAINT [FK_ProspectTelephone_Prospect] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ProspectTelephone_Prospect]
ON [extension].[ProspectTelephone]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectTelephone] WITH CHECK ADD CONSTRAINT [FK_ProspectTelephone_TelephoneNumberType] FOREIGN KEY ([TelephoneNumberTypeId])
REFERENCES [edfi].[TelephoneNumberType] ([TelephoneNumberTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ProspectTelephone_TelephoneNumberType]
ON [extension].[ProspectTelephone]([TelephoneNumberTypeId] ASC)
GO

ALTER TABLE [extension].[ProspectTouchpoint] WITH CHECK ADD CONSTRAINT [FK_ProspectTouchpoint_Prospect] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ProspectTouchpoint_Prospect]
ON [extension].[ProspectTouchpoint]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[StaffAbsenceEvent] WITH CHECK ADD CONSTRAINT [FK_StaffAbsenceEvent_AbsenceEventCategoryDescriptor] FOREIGN KEY ([AbsenceEventCategoryDescriptorId])
REFERENCES [extension].[AbsenceEventCategoryDescriptor] ([AbsenceEventCategoryDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffAbsenceEvent_AbsenceEventCategoryDescriptor]
ON [extension].[StaffAbsenceEvent]([AbsenceEventCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffAbsenceEvent] WITH CHECK ADD CONSTRAINT [FK_StaffAbsenceEvent_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])


GO

CREATE NONCLUSTERED INDEX [FK_StaffAbsenceEvent_Staff]
ON [extension].[StaffAbsenceEvent]([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffApplicant] WITH CHECK ADD CONSTRAINT [FK_StaffApplicant_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffApplicant_Applicant]
ON [extension].[StaffApplicant]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[StaffApplicant] WITH CHECK ADD CONSTRAINT [FK_StaffApplicant_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffApplicant_Staff]
ON [extension].[StaffApplicant]([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_StaffBackgroundCheck_BackgroundCheckStatusDescriptor] FOREIGN KEY ([BackgroundCheckStatusDescriptorId])
REFERENCES [extension].[BackgroundCheckStatusDescriptor] ([BackgroundCheckStatusDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffBackgroundCheck_BackgroundCheckStatusDescriptor]
ON [extension].[StaffBackgroundCheck]([BackgroundCheckStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_StaffBackgroundCheck_BackgroundCheckTypeDescriptor] FOREIGN KEY ([BackgroundCheckTypeDescriptorId])
REFERENCES [extension].[BackgroundCheckTypeDescriptor] ([BackgroundCheckTypeDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffBackgroundCheck_BackgroundCheckTypeDescriptor]
ON [extension].[StaffBackgroundCheck]([BackgroundCheckTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_StaffBackgroundCheck_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffBackgroundCheck_Staff]
ON [extension].[StaffBackgroundCheck]([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentEvent] FOREIGN KEY ([EducationOrganizationId], [EmploymentEventTypeDescriptorId], [RequisitionNumber])
REFERENCES [extension].[EmploymentEvent] ([EducationOrganizationId], [EmploymentEventTypeDescriptorId], [RequisitionNumber])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentEvent]
ON [extension].[StaffEducationOrganizationEmploymentAssociationExtension]([EducationOrganizationId] ASC, [EmploymentEventTypeDescriptorId] ASC, [RequisitionNumber] ASC)
GO

ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentSeparationEvent] FOREIGN KEY ([EducationOrganizationId], [EmploymentSeparationDate], [RequisitionNumber])
REFERENCES [extension].[EmploymentSeparationEvent] ([EducationOrganizationId], [EmploymentSeparationDate], [RequisitionNumber])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentSeparationEvent]
ON [extension].[StaffEducationOrganizationEmploymentAssociationExtension]([EducationOrganizationId] ASC, [EmploymentSeparationDate] ASC, [RequisitionNumber] ASC)
GO

ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_SchoolYearType]
ON [extension].[StaffEducationOrganizationEmploymentAssociationExtension]([SchoolYear] ASC)
GO

ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation]
ON [extension].[StaffEducationOrganizationEmploymentAssociationExtension]([EducationOrganizationId] ASC, [EmploymentStatusDescriptorId] ASC, [HireDate] ASC, [StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffEvaluation] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluation_EducationOrganization]
ON [extension].[StaffEvaluation]([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluation] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluation_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluation_SchoolYearType]
ON [extension].[StaffEvaluation]([SchoolYear] ASC)
GO

ALTER TABLE [extension].[StaffEvaluation] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluation_StaffEvaluationPeriodDescriptor] FOREIGN KEY ([StaffEvaluationPeriodDescriptorId])
REFERENCES [extension].[StaffEvaluationPeriodDescriptor] ([StaffEvaluationPeriodDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluation_StaffEvaluationPeriodDescriptor]
ON [extension].[StaffEvaluation]([StaffEvaluationPeriodDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluation] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluation_StaffEvaluationTypeDescriptor] FOREIGN KEY ([StaffEvaluationTypeDescriptorId])
REFERENCES [extension].[StaffEvaluationTypeDescriptor] ([StaffEvaluationTypeDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluation_StaffEvaluationTypeDescriptor]
ON [extension].[StaffEvaluation]([StaffEvaluationTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationComponent] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationComponent_StaffEvaluation] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle])
REFERENCES [extension].[StaffEvaluation] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationComponent_StaffEvaluation]
ON [extension].[StaffEvaluationComponent]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationComponent] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationComponent_StaffEvaluationTypeDescriptor] FOREIGN KEY ([StaffEvaluationTypeDescriptorId])
REFERENCES [extension].[StaffEvaluationTypeDescriptor] ([StaffEvaluationTypeDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationComponent_StaffEvaluationTypeDescriptor]
ON [extension].[StaffEvaluationComponent]([StaffEvaluationTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationComponentRating] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationComponentRating_StaffEvaluationComponent] FOREIGN KEY ([EducationOrganizationId], [EvaluationComponent], [SchoolYear], [StaffEvaluationTitle])
REFERENCES [extension].[StaffEvaluationComponent] ([EducationOrganizationId], [EvaluationComponent], [SchoolYear], [StaffEvaluationTitle])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationComponentRating_StaffEvaluationComponent]
ON [extension].[StaffEvaluationComponentRating]([EducationOrganizationId] ASC, [EvaluationComponent] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationComponentRating] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationComponentRating_StaffEvaluationRating] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationDate], [StaffEvaluationTitle], [StaffUSI])
REFERENCES [extension].[StaffEvaluationRating] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationDate], [StaffEvaluationTitle], [StaffUSI])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationComponentRating_StaffEvaluationRating]
ON [extension].[StaffEvaluationComponentRating]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationDate] ASC, [StaffEvaluationTitle] ASC, [StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationComponentRating] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationComponentRating_StaffEvaluationRatingLevelDescriptor] FOREIGN KEY ([StaffEvaluationRatingLevelDescriptorId])
REFERENCES [extension].[StaffEvaluationRatingLevelDescriptor] ([StaffEvaluationRatingLevelDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationComponentRating_StaffEvaluationRatingLevelDescriptor]
ON [extension].[StaffEvaluationComponentRating]([StaffEvaluationRatingLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationComponentStaffRatingLevel] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationComponentStaffRatingLevel_StaffEvaluationComponent] FOREIGN KEY ([EducationOrganizationId], [EvaluationComponent], [SchoolYear], [StaffEvaluationTitle])
REFERENCES [extension].[StaffEvaluationComponent] ([EducationOrganizationId], [EvaluationComponent], [SchoolYear], [StaffEvaluationTitle])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationComponentStaffRatingLevel_StaffEvaluationComponent]
ON [extension].[StaffEvaluationComponentStaffRatingLevel]([EducationOrganizationId] ASC, [EvaluationComponent] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationElement] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationElement_StaffEvaluationComponent] FOREIGN KEY ([EducationOrganizationId], [EvaluationComponent], [SchoolYear], [StaffEvaluationTitle])
REFERENCES [extension].[StaffEvaluationComponent] ([EducationOrganizationId], [EvaluationComponent], [SchoolYear], [StaffEvaluationTitle])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationElement_StaffEvaluationComponent]
ON [extension].[StaffEvaluationElement]([EducationOrganizationId] ASC, [EvaluationComponent] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationElementRating] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationElementRating_StaffEvaluationElement] FOREIGN KEY ([EducationOrganizationId], [EvaluationComponent], [EvaluationElement], [SchoolYear], [StaffEvaluationTitle])
REFERENCES [extension].[StaffEvaluationElement] ([EducationOrganizationId], [EvaluationComponent], [EvaluationElement], [SchoolYear], [StaffEvaluationTitle])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationElementRating_StaffEvaluationElement]
ON [extension].[StaffEvaluationElementRating]([EducationOrganizationId] ASC, [EvaluationComponent] ASC, [EvaluationElement] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationElementRating] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationElementRating_StaffEvaluationRating] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationDate], [StaffEvaluationTitle], [StaffUSI])
REFERENCES [extension].[StaffEvaluationRating] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationDate], [StaffEvaluationTitle], [StaffUSI])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationElementRating_StaffEvaluationRating]
ON [extension].[StaffEvaluationElementRating]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationDate] ASC, [StaffEvaluationTitle] ASC, [StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationElementRating] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationElementRating_StaffEvaluationRatingLevelDescriptor] FOREIGN KEY ([StaffEvaluationRatingLevelDescriptorId])
REFERENCES [extension].[StaffEvaluationRatingLevelDescriptor] ([StaffEvaluationRatingLevelDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationElementRating_StaffEvaluationRatingLevelDescriptor]
ON [extension].[StaffEvaluationElementRating]([StaffEvaluationRatingLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationElementStaffRatingLevel] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationElementStaffRatingLevel_StaffEvaluationElement] FOREIGN KEY ([EducationOrganizationId], [EvaluationComponent], [EvaluationElement], [SchoolYear], [StaffEvaluationTitle])
REFERENCES [extension].[StaffEvaluationElement] ([EducationOrganizationId], [EvaluationComponent], [EvaluationElement], [SchoolYear], [StaffEvaluationTitle])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationElementStaffRatingLevel_StaffEvaluationElement]
ON [extension].[StaffEvaluationElementStaffRatingLevel]([EducationOrganizationId] ASC, [EvaluationComponent] ASC, [EvaluationElement] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationPeriodDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationPeriodDescriptor_Descriptor] FOREIGN KEY ([StaffEvaluationPeriodDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationPeriodDescriptor_Descriptor]
ON [extension].[StaffEvaluationPeriodDescriptor]([StaffEvaluationPeriodDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationPeriodDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationPeriodDescriptor_StaffEvaluationPeriodType] FOREIGN KEY ([StaffEvaluationPeriodTypeId])
REFERENCES [extension].[StaffEvaluationPeriodType] ([StaffEvaluationPeriodTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationPeriodDescriptor_StaffEvaluationPeriodType]
ON [extension].[StaffEvaluationPeriodDescriptor]([StaffEvaluationPeriodTypeId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationRating] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationRating_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationRating_Staff]
ON [extension].[StaffEvaluationRating]([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationRating] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationRating_Staff1] FOREIGN KEY ([EvaluatedByStaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationRating_Staff1]
ON [extension].[StaffEvaluationRating]([EvaluatedByStaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationRating] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationRating_StaffEvaluation] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle])
REFERENCES [extension].[StaffEvaluation] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationRating_StaffEvaluation]
ON [extension].[StaffEvaluationRating]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationRating] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationRating_StaffEvaluationRatingLevelDescriptor] FOREIGN KEY ([StaffEvaluationRatingLevelDescriptorId])
REFERENCES [extension].[StaffEvaluationRatingLevelDescriptor] ([StaffEvaluationRatingLevelDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationRating_StaffEvaluationRatingLevelDescriptor]
ON [extension].[StaffEvaluationRating]([StaffEvaluationRatingLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationRatingLevelDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationRatingLevelDescriptor_Descriptor] FOREIGN KEY ([StaffEvaluationRatingLevelDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationRatingLevelDescriptor_Descriptor]
ON [extension].[StaffEvaluationRatingLevelDescriptor]([StaffEvaluationRatingLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationRatingLevelDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationRatingLevelDescriptor_StaffEvaluationRatingLevelType] FOREIGN KEY ([StaffEvaluationRatingLevelTypeId])
REFERENCES [extension].[StaffEvaluationRatingLevelType] ([StaffEvaluationRatingLevelTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationRatingLevelDescriptor_StaffEvaluationRatingLevelType]
ON [extension].[StaffEvaluationRatingLevelDescriptor]([StaffEvaluationRatingLevelTypeId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationStaffRatingLevel] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationStaffRatingLevel_StaffEvaluation] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle])
REFERENCES [extension].[StaffEvaluation] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationStaffRatingLevel_StaffEvaluation]
ON [extension].[StaffEvaluationStaffRatingLevel]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationTypeDescriptor_Descriptor] FOREIGN KEY ([StaffEvaluationTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationTypeDescriptor_Descriptor]
ON [extension].[StaffEvaluationTypeDescriptor]([StaffEvaluationTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffEvaluationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffEvaluationTypeDescriptor_StaffEvaluationType] FOREIGN KEY ([StaffEvaluationTypeId])
REFERENCES [extension].[StaffEvaluationType] ([StaffEvaluationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffEvaluationTypeDescriptor_StaffEvaluationType]
ON [extension].[StaffEvaluationTypeDescriptor]([StaffEvaluationTypeId] ASC)
GO

ALTER TABLE [extension].[StaffExtension] WITH CHECK ADD CONSTRAINT [FK_StaffExtension_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffExtension_Staff]
ON [extension].[StaffExtension]([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffHighlyQualifiedAcademicSubject] WITH CHECK ADD CONSTRAINT [FK_StaffHighlyQualifiedAcademicSubject_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffHighlyQualifiedAcademicSubject_AcademicSubjectDescriptor]
ON [extension].[StaffHighlyQualifiedAcademicSubject]([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffHighlyQualifiedAcademicSubject] WITH CHECK ADD CONSTRAINT [FK_StaffHighlyQualifiedAcademicSubject_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffHighlyQualifiedAcademicSubject_Staff]
ON [extension].[StaffHighlyQualifiedAcademicSubject]([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffSeniority] WITH CHECK ADD CONSTRAINT [FK_StaffSeniority_CredentialFieldDescriptor] FOREIGN KEY ([CredentialFieldDescriptorId])
REFERENCES [edfi].[CredentialFieldDescriptor] ([CredentialFieldDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffSeniority_CredentialFieldDescriptor]
ON [extension].[StaffSeniority]([CredentialFieldDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffSeniority] WITH CHECK ADD CONSTRAINT [FK_StaffSeniority_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffSeniority_Staff]
ON [extension].[StaffSeniority]([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor] FOREIGN KEY ([LevelOfDegreeAwardedDescriptorId])
REFERENCES [extension].[LevelOfDegreeAwardedDescriptor] ([LevelOfDegreeAwardedDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor]
ON [extension].[StaffTeacherPreparationProgram]([LevelOfDegreeAwardedDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgram_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgram_Staff]
ON [extension].[StaffTeacherPreparationProgram]([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor] FOREIGN KEY ([TeacherPreparationProgramTypeDescriptorId])
REFERENCES [extension].[TeacherPreparationProgramTypeDescriptor] ([TeacherPreparationProgramTypeDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor]
ON [extension].[StaffTeacherPreparationProgram]([TeacherPreparationProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_AddressType] FOREIGN KEY ([AddressTypeId])
REFERENCES [edfi].[AddressType] ([AddressTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgramAddress_AddressType]
ON [extension].[StaffTeacherPreparationProgramAddress]([AddressTypeId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_StaffTeacherPreparationProgram] FOREIGN KEY ([StaffUSI], [TeacherPreparationProgramName])
REFERENCES [extension].[StaffTeacherPreparationProgram] ([StaffUSI], [TeacherPreparationProgramName])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgramAddress_StaffTeacherPreparationProgram]
ON [extension].[StaffTeacherPreparationProgramAddress]([StaffUSI] ASC, [TeacherPreparationProgramName] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_StateAbbreviationType] FOREIGN KEY ([StateAbbreviationTypeId])
REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgramAddress_StateAbbreviationType]
ON [extension].[StaffTeacherPreparationProgramAddress]([StateAbbreviationTypeId] ASC)
GO

ALTER TABLE [extension].[Survey] WITH CHECK ADD CONSTRAINT [FK_Survey_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])


GO

CREATE NONCLUSTERED INDEX [FK_Survey_EducationOrganization]
ON [extension].[Survey]([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[Survey] WITH CHECK ADD CONSTRAINT [FK_Survey_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])


GO

CREATE NONCLUSTERED INDEX [FK_Survey_SchoolYearType]
ON [extension].[Survey]([SchoolYear] ASC)
GO

ALTER TABLE [extension].[Survey] WITH CHECK ADD CONSTRAINT [FK_Survey_SurveyCategoryDescriptor] FOREIGN KEY ([SurveyCategoryDescriptorId])
REFERENCES [extension].[SurveyCategoryDescriptor] ([SurveyCategoryDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_Survey_SurveyCategoryDescriptor]
ON [extension].[Survey]([SurveyCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[Survey] WITH CHECK ADD CONSTRAINT [FK_Survey_TermDescriptor] FOREIGN KEY ([TermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_Survey_TermDescriptor]
ON [extension].[Survey]([TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[SurveyCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_SurveyCategoryDescriptor_Descriptor] FOREIGN KEY ([SurveyCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_SurveyCategoryDescriptor_Descriptor]
ON [extension].[SurveyCategoryDescriptor]([SurveyCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[SurveyCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_SurveyCategoryDescriptor_SurveyCategoryType] FOREIGN KEY ([SurveyCategoryTypeId])
REFERENCES [extension].[SurveyCategoryType] ([SurveyCategoryTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyCategoryDescriptor_SurveyCategoryType]
ON [extension].[SurveyCategoryDescriptor]([SurveyCategoryTypeId] ASC)
GO

ALTER TABLE [extension].[SurveyQuestion] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestion_QuestionFormType] FOREIGN KEY ([QuestionFormTypeId])
REFERENCES [extension].[QuestionFormType] ([QuestionFormTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestion_QuestionFormType]
ON [extension].[SurveyQuestion]([QuestionFormTypeId] ASC)
GO

ALTER TABLE [extension].[SurveyQuestion] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestion_Survey] FOREIGN KEY ([SurveyIdentifier])
REFERENCES [extension].[Survey] ([SurveyIdentifier])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestion_Survey]
ON [extension].[SurveyQuestion]([SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestion] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestion_SurveySection] FOREIGN KEY ([SurveyIdentifier], [SurveySectionTitle])
REFERENCES [extension].[SurveySection] ([SurveyIdentifier], [SurveySectionTitle])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestion_SurveySection]
ON [extension].[SurveyQuestion]([SurveyIdentifier] ASC, [SurveySectionTitle] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionMatrixElement] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionMatrixElement_SurveyQuestion] FOREIGN KEY ([QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[SurveyQuestion] ([QuestionCode], [SurveyIdentifier])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionMatrixElement_SurveyQuestion]
ON [extension].[SurveyQuestionMatrixElement]([QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionNumericChoice] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionNumericChoice_SurveyQuestion] FOREIGN KEY ([QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[SurveyQuestion] ([QuestionCode], [SurveyIdentifier])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionNumericChoice_SurveyQuestion]
ON [extension].[SurveyQuestionNumericChoice]([QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionResponse_SurveyQuestion] FOREIGN KEY ([QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[SurveyQuestion] ([QuestionCode], [SurveyIdentifier])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponse_SurveyQuestion]
ON [extension].[SurveyQuestionResponse]([QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionResponse_SurveyResponse] FOREIGN KEY ([SurveyIdentifier], [SurveyResponseIdentifier])
REFERENCES [extension].[SurveyResponse] ([SurveyIdentifier], [SurveyResponseIdentifier])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponse_SurveyResponse]
ON [extension].[SurveyQuestionResponse]([SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse] FOREIGN KEY ([QuestionCode], [SurveyIdentifier], [SurveyResponseIdentifier])
REFERENCES [extension].[SurveyQuestionResponse] ([QuestionCode], [SurveyIdentifier], [SurveyResponseIdentifier])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse]
ON [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse]([QuestionCode] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionTextChoice] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionTextChoice_SurveyQuestion] FOREIGN KEY ([QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[SurveyQuestion] ([QuestionCode], [SurveyIdentifier])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionTextChoice_SurveyQuestion]
ON [extension].[SurveyQuestionTextChoice]([QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyResponse_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Applicant]
ON [extension].[SurveyResponse]([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[SurveyResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyResponse_Parent] FOREIGN KEY ([ParentUSI])
REFERENCES [edfi].[Parent] ([ParentUSI])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Parent]
ON [extension].[SurveyResponse]([ParentUSI] ASC)
GO

ALTER TABLE [extension].[SurveyResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyResponse_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Staff]
ON [extension].[SurveyResponse]([StaffUSI] ASC)
GO

ALTER TABLE [extension].[SurveyResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyResponse_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Student]
ON [extension].[SurveyResponse]([StudentUSI] ASC)
GO

ALTER TABLE [extension].[SurveyResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyResponse_Survey] FOREIGN KEY ([SurveyIdentifier])
REFERENCES [extension].[Survey] ([SurveyIdentifier])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Survey]
ON [extension].[SurveyResponse]([SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveySection] WITH CHECK ADD CONSTRAINT [FK_SurveySection_Survey] FOREIGN KEY ([SurveyIdentifier])
REFERENCES [extension].[Survey] ([SurveyIdentifier])


GO

CREATE NONCLUSTERED INDEX [FK_SurveySection_Survey]
ON [extension].[SurveySection]([SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveySectionResponseRating] WITH CHECK ADD CONSTRAINT [FK_SurveySectionResponseRating_SurveyResponse] FOREIGN KEY ([SurveyIdentifier], [SurveyResponseIdentifier])
REFERENCES [extension].[SurveyResponse] ([SurveyIdentifier], [SurveyResponseIdentifier])


GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionResponseRating_SurveyResponse]
ON [extension].[SurveySectionResponseRating]([SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveySectionResponseRating] WITH CHECK ADD CONSTRAINT [FK_SurveySectionResponseRating_SurveySection] FOREIGN KEY ([SurveyIdentifier], [SurveySectionTitle])
REFERENCES [extension].[SurveySection] ([SurveyIdentifier], [SurveySectionTitle])


GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionResponseRating_SurveySection]
ON [extension].[SurveySectionResponseRating]([SurveyIdentifier] ASC, [SurveySectionTitle] ASC)
GO

ALTER TABLE [extension].[TalentManagementGoal] WITH CHECK ADD CONSTRAINT [FK_TalentManagementGoal_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])


GO

CREATE NONCLUSTERED INDEX [FK_TalentManagementGoal_SchoolYearType]
ON [extension].[TalentManagementGoal]([SchoolYear] ASC)
GO

ALTER TABLE [extension].[TalentManagementGoalEducationOrganization] WITH CHECK ADD CONSTRAINT [FK_TalentManagementGoalEducationOrganization_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])


GO

CREATE NONCLUSTERED INDEX [FK_TalentManagementGoalEducationOrganization_EducationOrganization]
ON [extension].[TalentManagementGoalEducationOrganization]([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[TalentManagementGoalEducationOrganization] WITH CHECK ADD CONSTRAINT [FK_TalentManagementGoalEducationOrganization_TalentManagementGoal] FOREIGN KEY ([GoalTitle], [SchoolYear])
REFERENCES [extension].[TalentManagementGoal] ([GoalTitle], [SchoolYear])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TalentManagementGoalEducationOrganization_TalentManagementGoal]
ON [extension].[TalentManagementGoalEducationOrganization]([GoalTitle] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProgramTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProgramTypeDescriptor_Descriptor] FOREIGN KEY ([TeacherPreparationProgramTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProgramTypeDescriptor_Descriptor]
ON [extension].[TeacherPreparationProgramTypeDescriptor]([TeacherPreparationProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProgramTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramType] FOREIGN KEY ([TeacherPreparationProgramTypeId])
REFERENCES [extension].[TeacherPreparationProgramType] ([TeacherPreparationProgramTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramType]
ON [extension].[TeacherPreparationProgramTypeDescriptor]([TeacherPreparationProgramTypeId] ASC)
GO

ALTER TABLE [extension].[WithdrawReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_WithdrawReasonDescriptor_Descriptor] FOREIGN KEY ([WithdrawReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_WithdrawReasonDescriptor_Descriptor]
ON [extension].[WithdrawReasonDescriptor]([WithdrawReasonDescriptorId] ASC)
GO

ALTER TABLE [extension].[WithdrawReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_WithdrawReasonDescriptor_WithdrawReasonType] FOREIGN KEY ([WithdrawReasonTypeId])
REFERENCES [extension].[WithdrawReasonType] ([WithdrawReasonTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_WithdrawReasonDescriptor_WithdrawReasonType]
ON [extension].[WithdrawReasonDescriptor]([WithdrawReasonTypeId] ASC)
GO



/****** Trigger:  [extension].[Applicant_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[Applicant_TR_DeleteEvent]
    ON [extension].[Applicant]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'Applicant', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[Application_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[Application_TR_DeleteEvent]
    ON [extension].[Application]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'Application', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[ApplicationEvent_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[ApplicationEvent_TR_DeleteEvent]
    ON [extension].[ApplicationEvent]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'ApplicationEvent', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[EducationOrganizationFacts_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[EducationOrganizationFacts_TR_DeleteEvent]
    ON [extension].[EducationOrganizationFacts]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'EducationOrganizationFacts', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[EmploymentEvent_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[EmploymentEvent_TR_DeleteEvent]
    ON [extension].[EmploymentEvent]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'EmploymentEvent', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[EmploymentSeparationEvent_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[EmploymentSeparationEvent_TR_DeleteEvent]
    ON [extension].[EmploymentSeparationEvent]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'EmploymentSeparationEvent', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[OpenStaffPositionEvent_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[OpenStaffPositionEvent_TR_DeleteEvent]
    ON [extension].[OpenStaffPositionEvent]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'OpenStaffPositionEvent', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[Prospect_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[Prospect_TR_DeleteEvent]
    ON [extension].[Prospect]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'Prospect', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[RecruitmentEvent_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[RecruitmentEvent_TR_DeleteEvent]
    ON [extension].[RecruitmentEvent]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'RecruitmentEvent', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[StaffAbsenceEvent_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[StaffAbsenceEvent_TR_DeleteEvent]
    ON [extension].[StaffAbsenceEvent]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'StaffAbsenceEvent', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[StaffEvaluation_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[StaffEvaluation_TR_DeleteEvent]
    ON [extension].[StaffEvaluation]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'StaffEvaluation', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[StaffEvaluationComponent_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[StaffEvaluationComponent_TR_DeleteEvent]
    ON [extension].[StaffEvaluationComponent]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'StaffEvaluationComponent', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[StaffEvaluationComponentRating_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[StaffEvaluationComponentRating_TR_DeleteEvent]
    ON [extension].[StaffEvaluationComponentRating]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'StaffEvaluationComponentRating', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[StaffEvaluationElement_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[StaffEvaluationElement_TR_DeleteEvent]
    ON [extension].[StaffEvaluationElement]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'StaffEvaluationElement', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[StaffEvaluationElementRating_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[StaffEvaluationElementRating_TR_DeleteEvent]
    ON [extension].[StaffEvaluationElementRating]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'StaffEvaluationElementRating', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[StaffEvaluationRating_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[StaffEvaluationRating_TR_DeleteEvent]
    ON [extension].[StaffEvaluationRating]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'StaffEvaluationRating', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[Survey_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[Survey_TR_DeleteEvent]
    ON [extension].[Survey]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'Survey', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[SurveyQuestion_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[SurveyQuestion_TR_DeleteEvent]
    ON [extension].[SurveyQuestion]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'SurveyQuestion', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[SurveyQuestionResponse_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[SurveyQuestionResponse_TR_DeleteEvent]
    ON [extension].[SurveyQuestionResponse]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'SurveyQuestionResponse', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[SurveyResponse_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[SurveyResponse_TR_DeleteEvent]
    ON [extension].[SurveyResponse]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'SurveyResponse', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[SurveySection_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[SurveySection_TR_DeleteEvent]
    ON [extension].[SurveySection]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'SurveySection', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[SurveySectionResponseRating_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[SurveySectionResponseRating_TR_DeleteEvent]
    ON [extension].[SurveySectionResponseRating]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'SurveySectionResponseRating', 'extension'
FROM deleted;
END
GO

/****** Trigger:  [extension].[TalentManagementGoal_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[TalentManagementGoal_TR_DeleteEvent]
    ON [extension].[TalentManagementGoal]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'TalentManagementGoal', 'extension'
FROM deleted;
END
GO



INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Doctor','Doctor')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Family','Family')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Injured','Injured')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Personal','Personal')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Sick','Sick')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Vacation','Vacation')

INSERT INTO [extension].[ApplicationEventResultType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Advance','Advance')

INSERT INTO [extension].[ApplicationEventResultType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','NA','NA')

INSERT INTO [extension].[ApplicationEventResultType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Screen out','Screen out')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Accepted','Accepted')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Communication','Communication')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Extended','Extended')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Interview','Interview')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','No response','No response')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Phone Interview','Phone Interview')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Pre-screened','Pre-screened')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Recommendations','Recommendations')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Rejected','Rejected')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Sample Lesson','Sample Lesson')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School Visit','School Visit')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Selected','Selected')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Video','Video')

INSERT INTO [extension].[ApplicationEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Withdrawn','Withdrawn')

INSERT INTO [extension].[ApplicationSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Email','Email')

INSERT INTO [extension].[ApplicationSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Employee','Employee')

INSERT INTO [extension].[ApplicationSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Internet','Internet')

INSERT INTO [extension].[ApplicationSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Job Fair','Job Fair')

INSERT INTO [extension].[ApplicationSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[ApplicationSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Print','Print')

INSERT INTO [extension].[ApplicationSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Radio','Radio')

INSERT INTO [extension].[ApplicationSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Word of Mouth','Word of Mouth')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Accepted','Accepted')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Candidate Pool','Candidate Pool')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Extended','Extended')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','In Progress','In Progress')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Interview','Interview')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','No response','No response')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Phone Interview','Phone Interview')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Pre-screened','Pre-screened')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Recommendations','Recommendations')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Rejected','Rejected')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Sample Lesson','Sample Lesson')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School Visit','School Visit')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Selected','Selected')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Submitted','Submitted')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Video','Video')

INSERT INTO [extension].[ApplicationStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Withdrawn','Withdrawn')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Eligible','Eligible')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Employer Review','Employer Review')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Not Eligible','Not Eligible')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Started','Started')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Submitted','Submitted')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Waiting','Waiting')

INSERT INTO [extension].[BackgroundCheckType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','City','City')

INSERT INTO [extension].[BackgroundCheckType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','County','County')

INSERT INTO [extension].[BackgroundCheckType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Federal','Federal')

INSERT INTO [extension].[BackgroundCheckType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[BackgroundCheckType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','State','State')

INSERT INTO [extension].[EmploymentEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','New Hire','New Hire')

INSERT INTO [extension].[EmploymentEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Title change','Title change')

INSERT INTO [extension].[EmploymentEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Transfer','Transfer')

INSERT INTO [extension].[EmploymentSeparationReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Family','Family')

INSERT INTO [extension].[EmploymentSeparationReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Health','Health')

INSERT INTO [extension].[EmploymentSeparationReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Leaving district','Leaving district')

INSERT INTO [extension].[EmploymentSeparationReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Leaving state','Leaving state')

INSERT INTO [extension].[EmploymentSeparationReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[EmploymentSeparationReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Quitting','Quitting')

INSERT INTO [extension].[EmploymentSeparationReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Reduction in force','Reduction in force')

INSERT INTO [extension].[EmploymentSeparationReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Retiring','Retiring')

INSERT INTO [extension].[EmploymentSeparationReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Transfer','Transfer')

INSERT INTO [extension].[EmploymentSeparationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Involuntary','Involuntary')

INSERT INTO [extension].[EmploymentSeparationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Voluntary','Voluntary')

INSERT INTO [extension].[FundingSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','District','District')

INSERT INTO [extension].[FundingSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Federal','Federal')

INSERT INTO [extension].[FundingSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[FundingSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','State','State')

INSERT INTO [extension].[HireStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Applied','Applied')

INSERT INTO [extension].[HireStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Hired','Hired')

INSERT INTO [extension].[HireStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Not Accepted','Not Accepted')

INSERT INTO [extension].[HireStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Offered','Offered')

INSERT INTO [extension].[HireStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Recommended','Recommended')

INSERT INTO [extension].[HireStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Rejected','Rejected')

INSERT INTO [extension].[HireStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Withdrawn','Withdrawn')

INSERT INTO [extension].[HiringSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','District','District')

INSERT INTO [extension].[HiringSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[HiringSourceType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School','School')

INSERT INTO [extension].[InternalExternalHireType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','External','External')

INSERT INTO [extension].[InternalExternalHireType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Internal','Internal')

INSERT INTO [extension].[LevelOfDegreeAwardedType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Associates','Associates')

INSERT INTO [extension].[LevelOfDegreeAwardedType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Bachelors','Bachelors')

INSERT INTO [extension].[LevelOfDegreeAwardedType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Masters','Masters')

INSERT INTO [extension].[LevelOfDegreeAwardedType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','None','None')

INSERT INTO [extension].[LevelOfDegreeAwardedType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','PhD','PhD')

INSERT INTO [extension].[OpenStaffPositionEventStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Approved','Approved')

INSERT INTO [extension].[OpenStaffPositionEventStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Pending','Pending')

INSERT INTO [extension].[OpenStaffPositionEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Closed','Closed')

INSERT INTO [extension].[OpenStaffPositionEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Declared','Declared')

INSERT INTO [extension].[OpenStaffPositionEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Filled','Filled')

INSERT INTO [extension].[OpenStaffPositionEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Posted','Posted')

INSERT INTO [extension].[OpenStaffPositionEventType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Withdrawn','Withdrawn')

INSERT INTO [extension].[OpenStaffPositionReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','New','New')

INSERT INTO [extension].[OpenStaffPositionReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Replacement','Replacement')

INSERT INTO [extension].[QuestionFormType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Checkbox','Checkbox')

INSERT INTO [extension].[QuestionFormType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Dropdown','Dropdown')

INSERT INTO [extension].[QuestionFormType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Matrix of dropdowns','Matrix of dropdowns')

INSERT INTO [extension].[QuestionFormType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Matrix of numeric ratings','Matrix of numeric ratings')

INSERT INTO [extension].[QuestionFormType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Matrix of textboxes','Matrix of textboxes')

INSERT INTO [extension].[QuestionFormType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Radio box','Radio box')

INSERT INTO [extension].[QuestionFormType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Ranking','Ranking')

INSERT INTO [extension].[QuestionFormType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Textbox','Textbox')

INSERT INTO [extension].[StaffEvaluationPeriodType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Beginning of year','Beginning of year')

INSERT INTO [extension].[StaffEvaluationPeriodType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','End of Year','End of Year')

INSERT INTO [extension].[StaffEvaluationPeriodType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Fall','Fall')

INSERT INTO [extension].[StaffEvaluationPeriodType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Mid-Year','Mid-Year')

INSERT INTO [extension].[StaffEvaluationPeriodType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Q1','Q1')

INSERT INTO [extension].[StaffEvaluationPeriodType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Q2','Q2')

INSERT INTO [extension].[StaffEvaluationPeriodType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Q3','Q3')

INSERT INTO [extension].[StaffEvaluationPeriodType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Q4','Q4')

INSERT INTO [extension].[StaffEvaluationPeriodType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Spring','Spring')

INSERT INTO [extension].[StaffEvaluationPeriodType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Summer','Summer')

INSERT INTO [extension].[StaffEvaluationPeriodType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Winter','Winter')

INSERT INTO [extension].[StaffEvaluationRatingLevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Accomplished','Accomplished')

INSERT INTO [extension].[StaffEvaluationRatingLevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Demonstrated','Demonstrated')

INSERT INTO [extension].[StaffEvaluationRatingLevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Developing','Developing')

INSERT INTO [extension].[StaffEvaluationRatingLevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Effective','Effective')

INSERT INTO [extension].[StaffEvaluationRatingLevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Highly Effective','Highly Effective')

INSERT INTO [extension].[StaffEvaluationRatingLevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Ineffective','Ineffective')

INSERT INTO [extension].[StaffEvaluationRatingLevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Minimally Effective','Minimally Effective')

INSERT INTO [extension].[StaffEvaluationRatingLevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Not Demonstrated','Not Demonstrated')

INSERT INTO [extension].[StaffEvaluationRatingLevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Skilled','Skilled')

INSERT INTO [extension].[StaffEvaluationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Formal evaluation','Formal evaluation')

INSERT INTO [extension].[StaffEvaluationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Formal evaluation self-rating','Formal evaluation self-rating')

INSERT INTO [extension].[StaffEvaluationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Formal Observation','Formal Observation')

INSERT INTO [extension].[StaffEvaluationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Formal Observation self-rating','Formal Observation self-rating')

INSERT INTO [extension].[StaffEvaluationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Informal Observation','Informal Observation')

INSERT INTO [extension].[StaffEvaluationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Informal Observation self-rating','Informal Observation self-rating')

INSERT INTO [extension].[StaffEvaluationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Student Growth Measures','Student Growth Measures')

INSERT INTO [extension].[StaffEvaluationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Student Survey','Student Survey')

INSERT INTO [extension].[StaffEvaluationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Student Work','Student Work')

INSERT INTO [extension].[StaffEvaluationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Walkthrough','Walkthrough')

INSERT INTO [extension].[SurveyCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Administrator','Administrator')

INSERT INTO [extension].[SurveyCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Applicant','Applicant')

INSERT INTO [extension].[SurveyCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Community','Community')

INSERT INTO [extension].[SurveyCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','District','District')

INSERT INTO [extension].[SurveyCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Exit','Exit')

INSERT INTO [extension].[SurveyCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[SurveyCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Parent','Parent')

INSERT INTO [extension].[SurveyCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Principal','Principal')

INSERT INTO [extension].[SurveyCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Student','Student')

INSERT INTO [extension].[SurveyCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Teacher','Teacher')

INSERT INTO [extension].[TeacherPreparationProgramType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Alternate','Alternate')

INSERT INTO [extension].[TeacherPreparationProgramType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[TeacherPreparationProgramType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Traditional','Traditional')

INSERT INTO [extension].[WithdrawReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Displeased','Displeased')

INSERT INTO [extension].[WithdrawReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Dropped out','Dropped out')

INSERT INTO [extension].[WithdrawReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Hired Elsewhere','Hired Elsewhere')

INSERT INTO [extension].[WithdrawReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Not Eligible','Not Eligible')

INSERT INTO [extension].[WithdrawReasonType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Unknown','Unknown')

GO


