# $OpenBSD: Makefile,v 1.18 2020/06/26 16:17:50 bcallah Exp $

COMMENT =	free clone of Blokus board game
DISTNAME =	pentobi-18.1
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	games x11

HOMEPAGE =	http://pentobi.sourceforge.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5QuickControls2 Qt5Svg Qt5Widgets c m

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pentobi/}

MODULES =	devel/cmake \
		x11/qt5

BUILD_DEPENDS =	devel/appstream-glib \
		devel/gettext,-tools \
		textproc/docbook-xsl \
		textproc/itstool \
		x11/qt5/qttools

LIB_DEPENDS =	x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic \
		x11/qt5/qttools

CONFIGURE_ARGS =	-DMETAINFO_ITS="${LOCALBASE}/share/gettext/its/appdata.its" \
			-DPENTOBI_OPEN_HELP_EXTERNALLY=On

NO_TEST =	Yes

.include <bsd.port.mk>
