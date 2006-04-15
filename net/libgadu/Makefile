# $OpenBSD: Makefile,v 1.1.1.1 2006/04/15 20:49:25 alek Exp $

COMMENT=	"implementation of Gadu-Gadu IM protocol"

DISTNAME=	libgadu-20060411
SHARED_LIBS=	gadu 3.5
CATEGORIES=	net

HOMEPAGE=	http://dev.null.pl/ekg/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.atlantilde.com/~alek/distfiles/

WANTLIB=	c

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-pthread \
		--disable-libgadu-openssl
MAKE_FLAGS=	LIBgadu_VERSION=${LIBgadu_VERSION}
FAKE_FLAGS=	LIBgadu_VERSION=${LIBgadu_VERSION}

USE_GMAKE=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
