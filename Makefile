SPCOMP ?= spcomp64
SCRIPTING := addons/sourcemod/scripting
# gokz last
INCLUDES := $(SCRIPTING)/include submodules/MovementAPI/$(SCRIPTING)/include submodules/gokz/$(SCRIPTING)/include

$(SCRIPTING)/more-stats.smx: FORCE
	$(SPCOMP) $(SCRIPTING)/more-stats.sp $(addprefix -i,$(INCLUDES)) -o$@

FORCE:
