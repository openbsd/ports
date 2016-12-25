# $OpenBSD: Makefile,v 1.46 2016/12/25 14:34:39 zhuk Exp $

COMMENT=	free open source planetarium

DISTNAME=	stellarium-0.15.0
REVISION=	0

CATEGORIES=	astro x11

HOMEPAGE=	http://www.stellarium.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL Qt5Concurrent Qt5Core Qt5Gui Qt5Multimedia Qt5MultimediaWidgets
WANTLIB += Qt5Network Qt5OpenGL Qt5PrintSupport Qt5Script Qt5SerialPort
WANTLIB += Qt5Widgets c m pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=stellarium/}

MODULES=	devel/cmake \
		x11/qt5

LIB_DEPENDS=	x11/qt5/qtdeclarative \
		x11/qt5/qtmultimedia \
		x11/qt5/qtscript \
		x11/qt5/qtserialport \
		x11/qt5/qtxmlpatterns

# used to download more stars definitions
RUN_DEPENDS=	net/curl \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ENV=	HOME=${WRKDIR}
CONFIGURE_ARGS=	-Wno-dev \
		-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include" \
		-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${X11BASE}/include"

PORTHOME=	${WRKDIR}

NO_TEST=	Yes

pre-configure:
	sed -i 's,/usr/local,${LOCALBASE},g' ${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/data/stellarium.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
