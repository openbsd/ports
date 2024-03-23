COMMENT =	intelligent touch typing tutor

V =		3.3.0
DISTNAME =	tipp10-v${V}
PKGNAME =	tipp10-${V}
CATEGORIES =	x11 education

HOMEPAGE =	https://gitlab.com/tipp10/tipp10

MAINTAINER =    Raphael Graf <r@undefined.ch>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB +=	Qt6Network Qt6PrintSupport Qt6Sql Qt6Widgets c m

SITES =		https://gitlab.com/tipp10/tipp10/-/archive/v${V}/

MODULES =	devel/cmake x11/qt6

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic \
		x11/qt6/qttranslations

LIB_DEPENDS =	x11/qt6/qtmultimedia

NO_TEST =	Yes

.include <bsd.port.mk>
