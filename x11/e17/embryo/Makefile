# $OpenBSD: Makefile,v 1.5 2008/10/10 19:35:24 sturm Exp $

COMMENT=	C like scripting language used in the Enlightenment project
DISTNAME=	embryo-20071211
SHARED_LIBS +=	embryo               0.0      # .9.1

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

CONFIGURE_STYLE=	autoconf automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
