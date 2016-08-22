BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AbsenceEventCategoryType') AND name = N'UX_AbsenceEventCategoryType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AbsenceEventCategoryType_Id ON edfi.AbsenceEventCategoryType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.Applicant') AND name = N'UX_Applicant_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_Applicant_Id ON edfi.Applicant
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.Application') AND name = N'UX_Application_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_Application_Id ON edfi.Application
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ApplicationEvent') AND name = N'UX_ApplicationEvent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ApplicationEvent_Id ON edfi.ApplicationEvent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ApplicationEventResultType') AND name = N'UX_ApplicationEventResultType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ApplicationEventResultType_Id ON edfi.ApplicationEventResultType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ApplicationEventType') AND name = N'UX_ApplicationEventType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ApplicationEventType_Id ON edfi.ApplicationEventType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ApplicationSourceType') AND name = N'UX_ApplicationSourceType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ApplicationSourceType_Id ON edfi.ApplicationSourceType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ApplicationStatusType') AND name = N'UX_ApplicationStatusType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ApplicationStatusType_Id ON edfi.ApplicationStatusType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.BackgroundCheckStatusType') AND name = N'UX_BackgroundCheckStatusType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_BackgroundCheckStatusType_Id ON edfi.BackgroundCheckStatusType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.BackgroundCheckType') AND name = N'UX_BackgroundCheckType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_BackgroundCheckType_Id ON edfi.BackgroundCheckType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EducationOrganizationFacts') AND name = N'UX_EducationOrganizationFacts_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationFacts_Id ON edfi.EducationOrganizationFacts
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EmploymentEvent') AND name = N'UX_EmploymentEvent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EmploymentEvent_Id ON edfi.EmploymentEvent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EmploymentEventType') AND name = N'UX_EmploymentEventType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EmploymentEventType_Id ON edfi.EmploymentEventType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EmploymentSeparationEvent') AND name = N'UX_EmploymentSeparationEvent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EmploymentSeparationEvent_Id ON edfi.EmploymentSeparationEvent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EmploymentSeparationReasonType') AND name = N'UX_EmploymentSeparationReasonType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EmploymentSeparationReasonType_Id ON edfi.EmploymentSeparationReasonType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EmploymentSeparationType') AND name = N'UX_EmploymentSeparationType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EmploymentSeparationType_Id ON edfi.EmploymentSeparationType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.FundingSourceType') AND name = N'UX_FundingSourceType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_FundingSourceType_Id ON edfi.FundingSourceType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.HireStatusType') AND name = N'UX_HireStatusType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_HireStatusType_Id ON edfi.HireStatusType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.HiringSourceType') AND name = N'UX_HiringSourceType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_HiringSourceType_Id ON edfi.HiringSourceType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.InternalExternalHireType') AND name = N'UX_InternalExternalHireType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_InternalExternalHireType_Id ON edfi.InternalExternalHireType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.LevelOfDegreeAwardedType') AND name = N'UX_LevelOfDegreeAwardedType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_LevelOfDegreeAwardedType_Id ON edfi.LevelOfDegreeAwardedType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.OpenStaffPositionEvent') AND name = N'UX_OpenStaffPositionEvent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_OpenStaffPositionEvent_Id ON edfi.OpenStaffPositionEvent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.OpenStaffPositionEventStatusType') AND name = N'UX_OpenStaffPositionEventStatusType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_OpenStaffPositionEventStatusType_Id ON edfi.OpenStaffPositionEventStatusType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.OpenStaffPositionEventType') AND name = N'UX_OpenStaffPositionEventType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_OpenStaffPositionEventType_Id ON edfi.OpenStaffPositionEventType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.OpenStaffPositionReasonType') AND name = N'UX_OpenStaffPositionReasonType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_OpenStaffPositionReasonType_Id ON edfi.OpenStaffPositionReasonType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.Prospect') AND name = N'UX_Prospect_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_Prospect_Id ON edfi.Prospect
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.QuestionFormType') AND name = N'UX_QuestionFormType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_QuestionFormType_Id ON edfi.QuestionFormType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.RecruitmentEvent') AND name = N'UX_RecruitmentEvent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_RecruitmentEvent_Id ON edfi.RecruitmentEvent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffAbsenceEvent') AND name = N'UX_StaffAbsenceEvent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffAbsenceEvent_Id ON edfi.StaffAbsenceEvent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffEvaluation') AND name = N'UX_StaffEvaluation_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffEvaluation_Id ON edfi.StaffEvaluation
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffEvaluationComponent') AND name = N'UX_StaffEvaluationComponent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffEvaluationComponent_Id ON edfi.StaffEvaluationComponent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffEvaluationComponentRating') AND name = N'UX_StaffEvaluationComponentRating_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffEvaluationComponentRating_Id ON edfi.StaffEvaluationComponentRating
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffEvaluationElement') AND name = N'UX_StaffEvaluationElement_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffEvaluationElement_Id ON edfi.StaffEvaluationElement
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffEvaluationElementRating') AND name = N'UX_StaffEvaluationElementRating_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffEvaluationElementRating_Id ON edfi.StaffEvaluationElementRating
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffEvaluationPeriodType') AND name = N'UX_StaffEvaluationPeriodType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffEvaluationPeriodType_Id ON edfi.StaffEvaluationPeriodType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffEvaluationRating') AND name = N'UX_StaffEvaluationRating_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffEvaluationRating_Id ON edfi.StaffEvaluationRating
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffEvaluationRatingLevelType') AND name = N'UX_StaffEvaluationRatingLevelType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffEvaluationRatingLevelType_Id ON edfi.StaffEvaluationRatingLevelType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffEvaluationType') AND name = N'UX_StaffEvaluationType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffEvaluationType_Id ON edfi.StaffEvaluationType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.Survey') AND name = N'UX_Survey_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_Survey_Id ON edfi.Survey
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveyCategoryType') AND name = N'UX_SurveyCategoryType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveyCategoryType_Id ON edfi.SurveyCategoryType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveyQuestion') AND name = N'UX_SurveyQuestion_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveyQuestion_Id ON edfi.SurveyQuestion
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveyQuestionResponse') AND name = N'UX_SurveyQuestionResponse_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveyQuestionResponse_Id ON edfi.SurveyQuestionResponse
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveyResponse') AND name = N'UX_SurveyResponse_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveyResponse_Id ON edfi.SurveyResponse
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveySection') AND name = N'UX_SurveySection_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveySection_Id ON edfi.SurveySection
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveySectionResponseRating') AND name = N'UX_SurveySectionResponseRating_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveySectionResponseRating_Id ON edfi.SurveySectionResponseRating
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TalentManagementGoal') AND name = N'UX_TalentManagementGoal_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TalentManagementGoal_Id ON edfi.TalentManagementGoal
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TeacherPreparationProgramType') AND name = N'UX_TeacherPreparationProgramType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TeacherPreparationProgramType_Id ON edfi.TeacherPreparationProgramType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.WithdrawReasonType') AND name = N'UX_WithdrawReasonType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_WithdrawReasonType_Id ON edfi.WithdrawReasonType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

