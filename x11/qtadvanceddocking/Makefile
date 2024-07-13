
COMMENT =	advanced docking system for Qt

V =		4.3.1
DISTNAME =	qtadvanceddocking-${V}

DIST_TUPLE =	github githubuser0xFFFF Qt-Advanced-Docking-System ${V} .

SHARED_LIBS +=  qt6advanceddocking        0.0 # 0.0

CATEGORIES =	x11 devel

HOMEPAGE =	https://github.com/githubuser0xFFFF/Qt-Advanced-Docking-System

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPL-2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets m xcb

MODULES =		devel/cmake \
			x11/qt6

WRKSRC =		${WRKDIR}/Qt-Advanced-Docking-System-4.3.1

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

CONFIGURE_ARGS +=	-DADS_VERSION="${V}"

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

.include <bsd.port.mk>
