# $OpenBSD: Makefile,v 1.7 2009/08/10 06:31:45 kili Exp $

COMMENT=	GUI widget library used in MakeHuman

DISTNAME=	mhgui-0.1
PKGNAME=	${DISTNAME}p3
SHARED_LIBS +=	mhgui 0.0			# .0.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.dedalo-3d.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

WANTLIB=	GL GLU ICE SM X11 Xau Xdmcp Xext Xi Xmu Xt Xxf86vm m \
		pthread-stubs xcb z

LIB_DEPENDS=	animorph::graphics/animorph \
		glut.>=4::graphics/freeglut \
		png.>=5::graphics/png

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/GL \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -lz -lm"

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	perl -pi -e 's,packagedocdir=doc,packagedocdir=share/doc,g' \
		${WRKSRC}/configure
	perl -pi -e 's,doc/mhgui,share/doc/mhgui,g' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
