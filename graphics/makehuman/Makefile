# $OpenBSD: Makefile,v 1.24 2017/07/26 22:45:24 sthen Exp $

COMMENT=	parametrical modeling of 3D humanoid characters

DISTNAME=	makehuman-0.9.1-rc1a
PKGNAME=	makehuman-0.9.1rc1
CATEGORIES=	graphics
REVISION=	3

HOMEPAGE=	http://www.dedalo-3d.com/

# GPLv2 / MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU ICE SM X11 Xdamage Xext Xfixes Xi Xmu Xt Xxf86vm
WANTLIB += animorph c drm glut m mhgui png ${COMPILER_LIBCXX} xcb z
WANTLIB += X11-xcb Xrandr Xrender glapi pthread
WANTLIB += usbhid xcb-dri2 xcb-glx expat

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

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
