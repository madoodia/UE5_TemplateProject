// (C) 2025 madoodia.com All Rights Reserved.

#pragma once

#include "CoreMinimal.h"
#include "Modules/ModuleInterface.h"

class FUE5_TemplateProject : public IModuleInterface
{
public:
	static inline FUE5_TemplateProject& Get()
	{
		return FModuleManager::LoadModuleChecked<FUE5_TemplateProject>("UE5_TemplateProject");
	}

	static inline bool IsAvailable()
	{
		return FModuleManager::Get().IsModuleLoaded("UE5_TemplateProject");
	}

	virtual void StartupModule() override;
	virtual void ShutdownModule() override;
};
