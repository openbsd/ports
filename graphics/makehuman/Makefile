# $OpenBSD: Makefile,v 1.12 2011/10/23 11:06:44 ajacoutot Exp $

COMMENT=	parametrical modeling of 3D humanoid characters

DISTNAME=	makehuman-0.9.1-rc1a
PKGNAME=	makehuman-0.9.1rc1
CATEGORIES=	graphics

HOMEPAGE=	http://www.dedalo-3d.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 / MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL GLU ICE SM X11 Xdamage Xext Xfixes Xi Xmu Xt Xxf86vm
WANTLIB += animorph c drm glut m mhgui png stdc++ xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

# gtar(1), PaxHeaders
# gcp(1), see pre-configure
TAR=		${LOCALBASE}/bin/gtar
BUILD_DEPENDS=	misc/fileutils \
		archivers/gtar


RUN_DEPENDS=	graphics/aqsis
LIB_DEPENDS=	graphics/mhgui>=0.2

USE_LIBTOOL=	Yes
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
