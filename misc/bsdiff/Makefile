# $OpenBSD: Makefile,v 1.5 2009/05/20 13:22:47 benoit Exp $

COMMENT=	binary patch tools
DISTNAME=	bsdiff-4.3
CATEGORIES=	misc devel

HOMEPAGE=	http://www.daemonology.net/bsdiff/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CC='${CC}' \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib -lbz2"

LIB_DEPENDS=	bz2::archivers/bzip2
   
FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
NO_REGRESS=	Yes

.include <bsd.port.mk>

