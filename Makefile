PREFIX?=
BUILD_DIR?=$(shell defaults read com.apple.Xcode PBXProductDirectory 2> /dev/null)

ifeq ($(strip $(BUILD_DIR)),)
	BUILD_DIR=build
endif

DEFAULT_BUILDCONFIGURATION=Deployment
DEFAULT_TARGET=PerianPane
COMPONENT_TARGETS=FFusion.component FFission.component matroska-qt.component AVIImporter.component Perian
BUILDCONFIGURATION?=$(DEFAULT_BUILDCONFIGURATION)

CP=ditto --rsrc
RM=rm

.PHONY: all perian clean latest debug components

perian:
	xcodebuild -project Perian.xcodeproj -target $(DEFAULT_TARGET) -configuration $(BUILDCONFIGURATION) build

components:
	for target in $(COMPONENT_TARGETS); do \
		xcodebuild -project Perian.xcodeproj -target $$target -configuration $(BUILDCONFIGURATION) build; \
	done

all: components perian

debug:
	for target in $(COMPONENT_TARGETS); do \
		xcodebuild -project Perian.xcodeproj -target $$target -configuration Development build; \
	done
	xcodebuild -project Perian.xcodeproj -target $(DEFAULT_TARGET) -configuration Development build


#install:
#	    cp -R build/Adium.app ~/Applications/
#	    cp -R build/AIUtilities.framework ~/Library/Frameworks/

clean:
	xcodebuild -project Perian.xcodeproj -target $(DEFAULT_TARGET) -configuration $(BUILDCONFIGURATION) clean
	for target in $(COMPONENT_TARGETS); do \
		xcodebuild -project Perian.xcodeproj -target $$target -configuration $(BUILDCONFIGURATION) clean; \
	done



latest:
	svn up
	make perian

