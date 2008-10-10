# $OpenBSD: Makefile,v 1.6 2008/10/10 19:42:33 sturm Exp $

COMMENT=	library to write an arbitary set of chunks of data to a file
DISTNAME=	eet-20071211
SHARED_LIBS +=	eet                  0.0      # .9.10

HOMEPAGE=	http://docs.enlightenment.org/api/eet/html/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= 		c m z

LIB_DEPENDS=		jpeg::graphics/jpeg

CONFIGURE_STYLE=	autoconf automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
