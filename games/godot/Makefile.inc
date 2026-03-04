DBP_PROPERTIES ?=	parallel

DISTNAME ?=		godot-${VERSION}-stable

CATEGORIES +=		games

HOMEPAGE =		https://godotengine.org/

MAINTAINER =		Omar Polo <op@openbsd.org> \
			Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE ?=	Yes

SITES ?=		https://github.com/godotengine/godot/releases/download/${VERSION}-stable/
EXTRACT_SUFX ?=		.tar.xz

# C++ 14+
COMPILER ?=		base-clang ports-gcc

MODULES ?=		devel/scons

MODSCONS_FLAGS +=	CC="${CC}" \
			CXX="${CXX}" \
			progress=no \
			pulseaudio=no \
			verbose=yes \
			warnings=extra \
			werror=no
			
DEBUG_PACKAGES ?=	${BUILD_PACKAGES}
NO_TEST ?=		Yes
