// (C) 2025 madoodia.com All Rights Reserved.

using UnrealBuildTool;

public class UE5_TemplateProject : ModuleRules
{
	public UE5_TemplateProject(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

		PublicDependencyModuleNames.AddRange(new string[] { "Core", "CoreUObject", "Engine"});
		PrivateDependencyModuleNames.AddRange(new string[] {});
	}
}
