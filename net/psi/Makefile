# $OpenBSD: Makefile,v 1.39 2022/02/13 16:38:30 rsadowski Exp $

USE_WXNEEDED =	Yes

BROKEN = Connection Error: Unable to connect to server

COMMENT=	multiplatform Jabber client

V=		1.5
DISTNAME=	psi-${V}
CATEGORIES=	net
REVISION=	0

HOMEPAGE=	https://psi-im.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=psi/Psi/${V}/}
EXTRACT_SUFX=	.tar.xz

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Multimedia Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5Svg Qt5WebChannel Qt5WebEngine
WANTLIB += Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml SM X11 Xext c idn m qca-qt5 xcb z

MODULES=		devel/cmake \
			x11/qt5

LIB_DEPENDS=		devel/libidn \
			security/qca-qt5 \
			x11/qt5/qtmultimedia \
			x11/qt5/qtsvg \
			x11/qt5/qtwebengine \
			x11/qt5/qtx11extras

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ARGS=		-DUSE_CCACHE=OFF -DUSE_HUNSPELL=OFF

# For QSettings to write its setup
PORTHOME=		${WRKDIST}

NO_TEST=		Yes

post-patch:
	# Avoid conflict with C++20 <version> by adding .txt suffix
	mv ${WRKSRC}/version ${WRKSRC}/version.txt
	sed -i 's,SOURCE_DIR}/version,&.txt,' ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
