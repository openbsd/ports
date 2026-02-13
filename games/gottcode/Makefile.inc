CATEGORIES =	games
EXTRACT_SUFX ?=	.tar.bz2

HOMEPAGE ?=	https://gottcode.org/${GAME}/
SITES ?=	${HOMEPAGE}

# GPLv3+
PERMIT_PACKAGE =	Yes

WRKDIST ?=	${WRKDIR}/${DISTNAME:S/-src//}
MODULES +=	devel/cmake x11/qt6
WANTLIB +=	GL Qt6Core Qt6Gui Qt6Widgets
WANTLIB +=	c m pthread ${COMPILER_LIBCXX}
RUN_DEPENDS +=	devel/desktop-file-utils x11/gtk+4,-guic
BUILD_DEPENDS +=devel/gettext,-tools

NO_TEST =	Yes
