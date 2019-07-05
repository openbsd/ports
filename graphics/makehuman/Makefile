# $OpenBSD: Makefile,v 1.27 2019/07/05 11:52:59 sthen Exp $

COMMENT=	parametrical modeling of 3D humanoid characters

DISTNAME=	makehuman-0.9.1-rc1a
PKGNAME=	makehuman-0.9.1rc1
CATEGORIES=	graphics
REVISION=	6

# Newer releases available at https://github.com/makehumancommunity/makehuman
HOMEPAGE=	http://www.makehumancommunity.org/

# GPLv2 / MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU ICE SM X11 X11-xcb Xdamage Xext
WANTLIB += Xfixes Xi Xmu Xrandr Xrender Xt Xxf86vm animorph c drm expat
WANTLIB += glapi glut m mhgui png pthread xcb xcb-dri2 xcb-dri3 xcb-glx
WANTLIB += xcb-present xcb-sync xcb-xfixes xshmfence z

COMPILER =		base-clang ports-gcc base-gcc

# gcp(1), see pre-configure
BUILD_DEPENDS=	sysutils/coreutils

RUN_DEPENDS=	graphics/aqsis
LIB_DEPENDS=	graphics/mhgui>=0.2

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	sed -i 's,cp --parents,gcp --parents,g' \
		${WRKSRC}/{data,pixmaps}/Makefile.in

# remove useless files (ChangeLog, INSTALL...)
post-install:
	rm -r ${PREFIX}/doc

.include <bsd.port.mk>
