// (C) 2025 madoodia.com All Rights Reserved.

using UnrealBuildTool;
using System.Collections.Generic;

public class UE5_TemplateProjectTarget : TargetRules
{
	public UE5_TemplateProjectTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		DefaultBuildSettings = BuildSettingsVersion.Latest;
		IncludeOrderVersion = EngineIncludeOrderVersion.Latest;
		ExtraModuleNames.Add("UE5_TemplateProject");
	}
}
