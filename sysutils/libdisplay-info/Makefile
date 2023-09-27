COMMENT = EDID and DisplayID library

V = 		0.1.1
DISTNAME = 	libdisplay-info-$V
CATEGORIES = 	sysutils

# MIT
PERMIT_PACKAGE = Yes

SHARED_LIBS +=  display-info 0.0 # 0.0

SITES = https://gitlab.freedesktop.org/emersion/libdisplay-info/-/archive/$V/

COMPILER = 	base-clang ports-gcc
COMPILER_LANGS = c

MODULES = 	devel/meson

BUILD_DEPENDS =	misc/hwdata

.include <bsd.port.mk>
