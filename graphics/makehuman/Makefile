# $OpenBSD: Makefile,v 1.8 2009/08/10 06:31:45 kili Exp $

COMMENT=	parametrical modeling of 3D humanoid characters

DISTNAME=	makehuman-0.9
PKGNAME=	${DISTNAME}p4
CATEGORIES=	graphics

HOMEPAGE=	http://www.dedalo-3d.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 / MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

WANTLIB=	GL GLU ICE SM X11 Xau Xdmcp Xext Xi Xmu Xt Xxf86vm c m \
		pthread-stubs stdc++ xcb z

RUN_DEPENDS=	::graphics/aqsis
LIB_DEPENDS=	animorph::graphics/animorph \
		glut.>=4::graphics/freeglut \
		mhgui::graphics/mhgui \
		png.>=5::graphics/png

USE_X11=	Yes
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

.include <bsd.port.mk>
