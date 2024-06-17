COMMENT =	markdown note taking program with nextcloud integration

V =		24.6.3
DISTNAME =	qownnotes-${V}

CATEGORIES =	editors

HOMEPAGE =	https://www.qownnotes.org/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Core5Compat
WANTLIB +=	Qt6Gui Qt6Network Qt6PrintSupport Qt6Qml Qt6Sql Qt6Svg
WANTLIB +=	Qt6WebSockets Qt6Widgets Qt6Xml X11 botan-2 c m

SITES =		https://github.com/pbek/QOwnNotes/releases/download/v${V}/

EXTRACT_SUFX =	.tar.xz

COMPILER =	base-clang ports-gcc

MODULES =	devel/qmake x11/qt6

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic
LIB_DEPENDS =	security/botan2 \
		x11/qt6/qt5compat \
		x11/qt6/qtsvg \
		x11/qt6/qtwebsockets

USE_GMAKE =	Yes

MODQMAKE_ARGS =	USE_SYSTEM_BOTAN=1

.include <bsd.port.mk>
