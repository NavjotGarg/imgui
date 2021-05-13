project "ImGui"
  kind "StaticLib"
  language "C++"
  staticruntime "off"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir("bin-int/" .. outputdir .. "/%{prj.name}")

  files
  {
    "imconfig.h",
    "imgui.h",
    "imgui.cpp",
    "imgui_graw.cpp",
    "imgui_internal.h",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imstb_turetype.h",
    "imgui_demo.cpp"
  }

  filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

  filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
