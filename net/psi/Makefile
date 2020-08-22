# $OpenBSD: Makefile,v 1.35 2020/08/22 08:41:40 rsadowski Exp $

#BROKEN = Connection Error: Unable to connect to server

COMMENT=	multiplatform Jabber client

DISTNAME=	psi-1.4
CATEGORIES=	net

HOMEPAGE=	https://psi-im.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=psi/Psi/1.4/}
EXTRACT_SUFX=	.tar.xz

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Multimedia Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5Quick Qt5Svg Qt5WebChannel Qt5WebEngine Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += SM X11 Xext c hunspell-1.6 idn m qca-qt5 xcb z

MODULES=		devel/cmake \
			x11/qt5

LIB_DEPENDS=		devel/libidn \
			security/qca-qt5 \
			textproc/hunspell \
			x11/qt5/qtmultimedia \
			x11/qt5/qtsvg \
			x11/qt5/qtwebengine \
			x11/qt5/qtx11extras

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ARGS=		-DUSE_CCACHE=OFF

# For QSettings to write its setup
PORTHOME=		${WRKDIST}

NO_TEST=		Yes

post-patch:
	# Avoid conflict with C++20 <version> by adding .txt suffix
	mv ${WRKSRC}/version ${WRKSRC}/version.txt
	sed -i 's,SOURCE_DIR}/version,&.txt,' ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
