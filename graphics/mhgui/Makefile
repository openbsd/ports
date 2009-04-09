# $OpenBSD: Makefile,v 1.6 2009/04/09 13:01:53 jasper Exp $

COMMENT=	GUI widget library used in MakeHuman

DISTNAME=	mhgui-0.1
PKGNAME=	${DISTNAME}p2
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

WANTLIB=	GL GLU ICE SM X11 Xi Xmu Xau Xdmcp Xext Xt m z Xxf86vm

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
