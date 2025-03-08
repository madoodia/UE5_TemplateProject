// (C) 2025 madoodia.com All Rights Reserved.

using UnrealBuildTool;
using System.Collections.Generic;

public class UE5_TemplateProjectEditorTarget : TargetRules
{
	public UE5_TemplateProjectEditorTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Editor;
		DefaultBuildSettings = BuildSettingsVersion.Latest;
		IncludeOrderVersion = EngineIncludeOrderVersion.Latest;
		ExtraModuleNames.Add("UE5_TemplateProject");
	}
}
