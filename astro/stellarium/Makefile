# $OpenBSD: Makefile,v 1.4 2007/12/18 22:04:32 deanna Exp $

COMMENT=	free open source planetarium

DISTNAME=	stellarium-0.9.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	astro x11

HOMEPAGE=	http://www.stellarium.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=stellarium/}

WANTLIB=	freetype c pthread stdc++ Xext m GL X11 Xau GLU z ICE SM \
		Xdmcp Xcursor Xi Xinerama Xrandr Xrender fontconfig jpeg \
		QtGui QtOpenGL glib-2.0 gthread-2.0

USE_X11=	Yes
MODULES=	devel/gettext devel/cmake x11/qt4
BUILD_DEPENDS=	::devel/boost
LIB_DEPENDS=	png.>=5::graphics/png \
		curl.>=6::net/curl

CONFIGURE_STYLE=cmake
CONFIGURE_ENV=	HOME=${WRKDIR}
PORTHOME=	${WRKDIR}

MAKE_FLAGS=	-DVERBOSE
NO_REGRESS=	Yes
MODCMAKE_WANTCOLOR=No

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/data/stellarium.1
	@perl -pi -e 's,!!X11BASE!!,${X11BASE},g' \
		${WRKSRC}/cmake/FindFreeType2.cmake
	@perl -pi -e 's,!!CFLAGS!!,${CFLAGS},g;' \
		-e 's,!!CXXFLAGS!!,${CXXFLAGS},g' \
		${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_MAN} ${WRKSRC}/data/stellarium.1 \
		${PREFIX}/man/man1/stellarium.1

.include <bsd.port.mk>
