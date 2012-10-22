# $OpenBSD: Makefile,v 1.3 2012/10/22 04:44:21 brad Exp $

COMMENT=	portable ASS/SSA subtitle renderer

DISTNAME=	libass-0.10.1
CATEGORIES=	multimedia devel
MASTER_SITES=	http://libass.googlecode.com/files/

SHARED_LIBS=	ass 0.2

HOMEPAGE=	http://code.google.com/p/libass/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	enca expat fontconfig freetype fribidi m z

MODULES=	converters/libiconv
LIB_DEPENDS=	converters/enca \
		devel/fribidi>=0.19.2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-harfbuzz
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

.include <bsd.port.mk>
