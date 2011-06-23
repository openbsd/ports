# $OpenBSD: Makefile,v 1.1.1.1 2011/06/23 09:03:37 ajacoutot Exp $

COMMENT=	portable ASS/SSA subtitle renderer

DISTNAME=	libass-0.9.12
CATEGORIES=	multimedia devel
MASTER_SITES=	http://libass.googlecode.com/files/

SHARED_LIBS=	ass 0.0

HOMEPAGE=	http://code.google.com/p/libass/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	enca expat fontconfig freetype m z

MODULES=	converters/libiconv
LIB_DEPENDS=	converters/enca

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

.include <bsd.port.mk>
