# $OpenBSD: Makefile,v 1.11 2009/08/10 06:29:51 kili Exp $

COMMENT=	free open source planetarium

DISTNAME=	stellarium-0.10.2
PKGNAME=	${DISTNAME}p1

CATEGORIES=	astro x11

HOMEPAGE=	http://www.stellarium.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=stellarium/}

WANTLIB += GL GLU ICE SM X11 Xext Xi Xinerama Xrender c
WANTLIB += fontconfig freetype glib-2.0 gthread-2.0 jpeg m png
WANTLIB += pthread stdc++ z
WANTLIB += pthread-stubs xcb

USE_X11=	Yes

MODULES=	devel/gettext \
		devel/cmake \
		x11/qt4

BUILD_DEPENDS=	::devel/boost
LIB_DEPENDS=	QtGui,QtNetwork,QtOpenGL,QtScript::x11/qt4

CONFIGURE_STYLE=cmake
CONFIGURE_ENV=	HOME=${WRKDIR}
PORTHOME=	${WRKDIR}

NO_REGRESS=	Yes
MODCMAKE_WANTCOLOR=No

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cmake/FindFreeType2.cmake

.include <bsd.port.mk>
