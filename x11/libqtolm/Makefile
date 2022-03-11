COMMENT =	qt5 bindings for olm

V =		v3.0.1
DISTNAME =	libqtolm-${V}

PKGNAME =	${DISTNAME:S/v//}

SHARED_LIBS +=  QtOlm                     0.0 # 3.0

CATEGORIES =	x11 devel

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m olm

MASTER_SITES =	https://gitlab.com/b0/libqtolm/-/archive/${V}/

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	devel/olm

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
