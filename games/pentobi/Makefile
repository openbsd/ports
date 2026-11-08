COMMENT =	free clone of Blokus board game
DISTNAME =	pentobi-31.0
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	games x11

HOMEPAGE =	https://pentobi.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6Quick Qt6QuickControls2 Qt6Xml c m

SITES =		${SITE_SOURCEFORGE:=pentobi/}

MODULES =	devel/cmake \
		x11/qt6

BUILD_DEPENDS =	devel/appstream-glib \
		devel/gettext,-tools \
		textproc/docbook-xsl \
		textproc/itstool \
		x11/qt6/qttools

LIB_DEPENDS =	x11/qt6/qtdeclarative

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic \
		x11/qt6/qttools

CONFIGURE_ARGS =	-DMETAINFO_ITS="${LOCALBASE}/share/gettext/its/appdata.its" \
			-DPENTOBI_OPEN_HELP_EXTERNALLY=On

NO_TEST =	Yes

.include <bsd.port.mk>
