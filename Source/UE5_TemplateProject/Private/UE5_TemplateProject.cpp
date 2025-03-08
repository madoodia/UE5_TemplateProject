// (C) 2025 madoodia.com All Rights Reserved.

#include "UE5_TemplateProject.h"
#include "Modules/ModuleManager.h"

#include "Log.h"

void FUE5_TemplateProject::StartupModule()
{
	UE_LOG(LogUE5_TemplateProject, Log, TEXT("UE5_TemplateProject module starting up"));
}

void FUE5_TemplateProject::ShutdownModule()
{
	UE_LOG(LogUE5_TemplateProject, Log, TEXT("UE5_TemplateProject module shutting down"));
}

IMPLEMENT_PRIMARY_GAME_MODULE(FUE5_TemplateProject, UE5_TemplateProject, "UE5_TemplateProject");
