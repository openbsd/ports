# $OpenBSD: Makefile,v 1.18 2015/08/19 18:55:05 sthen Exp $

COMMENT=	parametrical modeling of 3D humanoid characters

DISTNAME=	makehuman-0.9.1-rc1a
PKGNAME=	makehuman-0.9.1rc1
CATEGORIES=	graphics
REVISION=	1

HOMEPAGE=	http://www.dedalo-3d.com/

# GPLv2 / MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU ICE SM X11 Xdamage Xext Xfixes Xi Xmu Xt Xxf86vm
WANTLIB += animorph c drm glut m mhgui png stdc++ xcb z
WANTLIB += X11-xcb Xau Xdmcp Xrandr Xrender glapi pthread pthread-stubs
WANTLIB += usbhid xcb-dri2 xcb-glx

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

# gcp(1), see pre-configure
BUILD_DEPENDS=	sysutils/coreutils

RUN_DEPENDS=	graphics/aqsis
LIB_DEPENDS=	graphics/mhgui>=0.2

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	perl -pi -e 's,packagedocdir=doc,packagedocdir=share/doc,g' \
		${WRKSRC}/configure
	perl -pi -e 's,doc/makehuman,share/doc/makehuman,g' \
		${WRKSRC}/Makefile.in
	perl -pi -e 's,cp --parents,gcp --parents,g' \
		${WRKSRC}/{data,pixmaps}/Makefile.in

# remove useless files (ChangeLog, INSTALL...)
post-install:
	rm -rf ${PREFIX}/share/doc

.include <bsd.port.mk>
