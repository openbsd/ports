# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:48 sthen Exp $

COMMENT=	binary patch tools
DISTNAME=	bsdiff-4.3
CATEGORIES=	misc devel

HOMEPAGE=	http://www.daemonology.net/bsdiff/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	bz2 c

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CC='${CC}' \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib -lbz2"

LIB_DEPENDS=	archivers/bzip2

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
NO_TEST=	Yes

.include <bsd.port.mk>
