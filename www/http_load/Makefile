# $OpenBSD: Makefile,v 1.15 2006/03/05 21:12:12 sturm Exp $

COMMENT=	"multiprocessing HTTP performance testing client"

DISTNAME=	http_load-29jun2005
PKGNAME=	http_load-20050629p0
CATEGORIES=	www benchmarks
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.acme.com/software/http_load/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl 

FAKE_FLAGS=	PREFIX="${PREFIX}"
MAKE_FILE=	${FILESDIR}/Makefile.bsd

.include <bsd.port.mk>
