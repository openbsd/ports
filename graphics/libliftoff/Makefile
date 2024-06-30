COMMENT = lightweight KMS plane library

V = 		0.5.0
DISTNAME = 	libliftoff-v$V
PKGNAME = 	libliftoff-$V
CATEGORIES = 	graphics

# MIT
PERMIT_PACKAGE = Yes

SHARED_LIBS = 	liftoff 0.1 # 0.5.0

SITES =	https://gitlab.freedesktop.org/emersion/libliftoff/-/archive/v$V/

COMPILER = 	base-clang ports-gcc
COMPILER_LANGS = c

MODULES = 	devel/meson

WANTLIB = 	drm

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
