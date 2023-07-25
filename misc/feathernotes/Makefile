COMMENT =	lightweight Qt5 notes manager
DISTNAME =	feathernotes-${GH_TAGNAME:S/^V//}
CATEGORIES =	misc x11

GH_ACCOUNT =	tsujan
GH_PROJECT =	FeatherNotes
GH_TAGNAME =	V1.1.0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += SM X11 Xext c hunspell-1.7 m

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	textproc/hunspell \
		x11/qt5/qtsvg \
		x11/qt5/qtx11extras

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX="${LOCALBASE}"

NO_TEST =	Yes

.include <bsd.port.mk>
