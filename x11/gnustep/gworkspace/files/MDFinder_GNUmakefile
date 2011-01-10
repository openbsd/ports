PACKAGE_NAME = gworkspace
include $(GNUSTEP_MAKEFILES)/common.make

VERSION = 0.1

APP_NAME = MDFinder
MDFinder_PRINCIPAL_CLASS = MDFinder
MDFinder_APPLICATION_ICON=MDFinder.tiff

MDFinder_HAS_RESOURCE_BUNDLE = yes

MDFinder_RESOURCE_FILES = \
    Resources/Images/* \
    Resources/English.lproj 

MDFinder_LANGUAGES = Resources/English 

# The Objective-C source files to be compiled

MDFinder_OBJC_FILES = main.m \
                  MDFinder.m 

ADDITIONAL_GUI_LIBS += -lMDKit
ADDITIONAL_GUI_LIBS += -lFSNode

-include GNUmakefile.preamble

-include GNUmakefile.local

include $(GNUSTEP_MAKEFILES)/application.make

-include GNUmakefile.postamble
