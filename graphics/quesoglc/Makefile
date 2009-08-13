# $OpenBSD: Makefile,v 1.1.1.1 2009/08/13 23:49:53 sthen Exp $

COMMENT=	implementation of the OpenGL Character Renderer

DISTNAME=	quesoglc-0.7.2
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=quesoglc/}

SHARED_LIBS=	GLC	0.0

HOMEPAGE=	http://quesoglc.sourceforge.net/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	GL GLU X11 Xau Xdmcp expat fontconfig freetype m z

LIB_DEPENDS=	fribidi::devel/fribidi

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
# Needs GLEW MX
CONFIGURE_ARGS+= --without-glew --disable-executables
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS=	Yes

.include <bsd.port.mk>
