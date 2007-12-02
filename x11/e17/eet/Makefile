# $OpenBSD: Makefile,v 1.2 2007/12/02 13:55:21 bernd Exp $

COMMENT=	library to write an arbitary set of chunks of data to a file
DISTNAME=	eet-20071107
PKGNAME=	${DISTNAME}p1
SHARED_LIBS +=	eet                  0.0      # .9.10

HOMEPAGE=	http://docs.enlightenment.org/api/eet/html/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= 		c m z

AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.9
AUTOMAKE_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

LIB_DEPENDS=		jpeg::graphics/jpeg

CONFIGURE_STYLE=	automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
