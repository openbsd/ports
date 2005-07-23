# $OpenBSD: Makefile,v 1.13 2005/07/23 21:35:24 aanriot Exp $

COMMENT=	"multiprocessing HTTP performance testing client"

DISTNAME=	http_load-29jun2005
PKGNAME=	http_load-20050629
CATEGORIES=	www benchmarks
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.acme.com/software/http_load/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl 

FAKE_FLAGS=	PREFIX="${PREFIX}"
MAKE_FILE=	${FILESDIR}/Makefile.bsd

.include <bsd.port.mk>
