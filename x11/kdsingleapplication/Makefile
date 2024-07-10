COMMENT =	helper class for single-instance policy applications

V =		1.1.0
DISTNAME =	kdsingleapplication-${V}

SHARED_LIBS +=  kdsingleapplication-qt6   0.0 # 0.0

CATEGORIES =	x11 devel

HOMEPAGE =	https://github.com/KDAB/KDSingleApplication/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network m

SITES =	https://github.com/KDAB/KDSingleApplication/releases/download/v${V}/

MODULES =		devel/cmake \
			x11/qt6

CONFIGURE_ARGS =	-DKDSingleApplication_QT6=ON

.include <bsd.port.mk>
