# $OpenBSD: Makefile,v 1.3 2007/12/02 18:18:10 bernd Exp $

COMMENT=	C like scripting language used in the Enlightenment project
DISTNAME=	embryo-20071107
SHARED_LIBS +=	embryo               0.0      # .9.1

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

CONFIGURE_STYLE=	automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
