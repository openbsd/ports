COMMENT =	EDID and DisplayID library

V = 		0.2.0
DISTNAME = 	libdisplay-info-$V
CATEGORIES = 	sysutils

SHARED_LIBS += display-info              0.1 # 0.2.0

# MIT
PERMIT_PACKAGE = Yes

SITES =		https://gitlab.freedesktop.org/emersion/libdisplay-info/-/archive/$V/

WANTLIB += c m

COMPILER = 	base-clang ports-gcc
COMPILER_LANGS = c

MODULES = 	devel/meson

BUILD_DEPENDS =	misc/hwdata

.include <bsd.port.mk>
