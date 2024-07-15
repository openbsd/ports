BUILD_UNLINKED = libva

ONLY_FOR_ARCHS =	amd64

COMMENT =	collection of tests for VA-API

GH_ACCOUNT =	intel
GH_PROJECT =	libva-utils
GH_TAGNAME =	2.22.0

CATEGORIES =	sysutils graphics

WANTLIB += ${COMPILER_LIBCXX} X11 c drm m va va-drm va-x11

# MIT
PERMIT_PACKAGE = Yes

COMPILER =	base-clang ports-gcc

MODULES =	devel/meson

MODMESON_CONFIGURE_ARGS =	-Dtests=true \
				-Dwayland=false

# XXX Broken for now?
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
