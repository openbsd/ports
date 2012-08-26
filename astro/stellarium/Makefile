# $OpenBSD: Makefile,v 1.27 2012/08/26 12:42:11 ajacoutot Exp $

COMMENT=	free open source planetarium

DISTNAME=	stellarium-0.11.4a
WRKDIST=	${WRKDIR}/stellarium-0.11.4

CATEGORIES=	astro x11

HOMEPAGE=	http://www.stellarium.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=stellarium/}

WANTLIB += GL GLU ICE SM X11 Xext c m pthread stdc++ z
WANTLIB += QtGui QtNetwork QtOpenGL QtScript

MODULES=	devel/gettext \
		devel/cmake \
		x11/qt4

# used to download more stars definitions
RUN_DEPENDS=	net/curl \
		devel/desktop-file-utils

CONFIGURE_STYLE=cmake
CONFIGURE_ENV=	HOME=${WRKDIR}
CONFIGURE_ARGS=	-Wno-dev \
		-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include" \
		-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${X11BASE}/include"

PORTHOME=	${WRKDIR}

NO_REGRESS=	Yes

pre-configure:
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/CMakeLists.txt \
		${WRKSRC}/cmake/FindIconv.cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/data/stellarium.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
