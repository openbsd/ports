COMMENT =	Qt widgets to manage color inputs

VERSION =	0.20250526
DISTNAME =	qt-color-widgets-${VERSION}

DIST_TUPLE +=	gitlab mattbas Qt-Color-Widgets 8491078434b24cba295b5e41cc0d2a94c7049a5b .

SHARED_LIBS +=  QtColorWidgets            0.0 # 0.0

CATEGORIES =	x11 devel

HOMEPAGE =	https://mattbas.gitlab.io/Qt-Color-Widgets/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets m

MODULES =		devel/cmake \
			x11/qt6

CONFIGURE_ARGS +=	-DQT_VERSION_MAJOR=6 \
			-DBUILD_SHARED_LIBS=ON

WRKDIST =		${WRKDIR}/Qt-Color-Widgets-8491078434b24cba295b5e41cc0d2a94c7049a5b

.include <bsd.port.mk>
