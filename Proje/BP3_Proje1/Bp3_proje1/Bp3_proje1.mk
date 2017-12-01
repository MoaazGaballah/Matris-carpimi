##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Bp3_proje1
ConfigurationName      :=Debug
WorkspacePath          :="D:/FSM/2017-2018 Güz/Programlama 3/Proje/BP3_Proje1"
ProjectPath            :="D:/FSM/2017-2018 Güz/Programlama 3/Proje/BP3_Proje1/Bp3_proje1"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Moaaz Gabllah
Date                   :=07/11/2017
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=gcc
SharedObjectLinkerName :=gcc -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="Bp3_proje1.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  $(shell pkg-config --libs gtk+-3.0)
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := gcc
CC       := gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -Wall -O0 $(shell pkg-config --cflags gtk+-3.0) $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/up_up_up_BP3_Proje1_BP3_Proje1_src_BP3_Proje1.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/up_up_up_BP3_Proje1_BP3_Proje1_src_BP3_Proje1.c$(ObjectSuffix): ../../../BP3_Proje1/BP3_Proje1/src/BP3_Proje1.c $(IntermediateDirectory)/up_up_up_BP3_Proje1_BP3_Proje1_src_BP3_Proje1.c$(DependSuffix)
	$(CC) $(SourceSwitch) "D:/FSM/2017-2018 Güz/Programlama 3/BP3_Proje1/BP3_Proje1/src/BP3_Proje1.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_BP3_Proje1_BP3_Proje1_src_BP3_Proje1.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_up_BP3_Proje1_BP3_Proje1_src_BP3_Proje1.c$(DependSuffix): ../../../BP3_Proje1/BP3_Proje1/src/BP3_Proje1.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_up_BP3_Proje1_BP3_Proje1_src_BP3_Proje1.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_up_BP3_Proje1_BP3_Proje1_src_BP3_Proje1.c$(DependSuffix) -MM ../../../BP3_Proje1/BP3_Proje1/src/BP3_Proje1.c

$(IntermediateDirectory)/up_up_up_BP3_Proje1_BP3_Proje1_src_BP3_Proje1.c$(PreprocessSuffix): ../../../BP3_Proje1/BP3_Proje1/src/BP3_Proje1.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_up_BP3_Proje1_BP3_Proje1_src_BP3_Proje1.c$(PreprocessSuffix) ../../../BP3_Proje1/BP3_Proje1/src/BP3_Proje1.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


