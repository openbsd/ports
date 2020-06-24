# $OpenBSD: Makefile,v 1.67 2020/06/24 16:11:51 ajacoutot Exp $

COMMENT=		free open source planetarium

GH_TAGNAME=		v0.20.2
GH_ACCOUNT=		Stellarium
GH_PROJECT=		stellarium

CATEGORIES=		astro x11

HOMEPAGE=		http://www.stellarium.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5Gui Qt5Multimedia Qt5MultimediaWidgets
WANTLIB += Qt5Network Qt5PrintSupport Qt5Script Qt5SerialPort Qt5Widgets
WANTLIB += c m pthread z ${COMPILER_LIBCXX}

MODULES=		devel/cmake \
			x11/qt5

LIB_DEPENDS=		x11/qt5/qtmultimedia \
			x11/qt5/qtscript \
			x11/qt5/qtserialport

# used to download more stars definitions
RUN_DEPENDS=		net/curl \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

CONFIGURE_ENV=		HOME=${WRKDIR}
CONFIGURE_ARGS=		-Wno-dev \
			-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${X11BASE}/include" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes

# XXX needs FindQt5Positioning.cmake
CONFIGURE_ARGS=		-DENABLE_GPS=0 -DENABLE_LIBGPS=0

PORTHOME=		${WRKDIR}

NO_TEST=		Yes

pre-configure:
	sed -i 's,/usr/local,${LOCALBASE},g' ${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/data/stellarium.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
