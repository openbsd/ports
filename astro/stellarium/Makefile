# $OpenBSD: Makefile,v 1.15 2010/08/26 11:12:46 jasper Exp $

COMMENT=	free open source planetarium

DISTNAME=	stellarium-0.10.5
REVISION=	0

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
WANTLIB += QtSql QtGui QtNetwork QtOpenGL QtScript

USE_X11=	Yes

MODULES=	devel/gettext \
		devel/cmake \
		x11/qt4

LIB_DEPENDS=	::x11/qt4

# used to download more stars definitions
RUN_DEPENDS=	::net/curl \
		:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_STYLE=cmake
CONFIGURE_ENV=	HOME=${WRKDIR}
PORTHOME=	${WRKDIR}

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt \
		${WRKSRC}/cmake/FindIconv.cmake \
		${WRKSRC}/data/stellarium.desktop

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/data/stellarium.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
