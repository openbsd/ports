# $OpenBSD: Makefile,v 1.8 2002/03/21 21:25:54 espie Exp $

COMMENT=	"multiprocessing HTTP performance testing client"

DISTNAME=	http_load-05apr2001
PKGNAME=	http_load-20010405
CATEGORIES=	www benchmarks
NEED_VERSION=	1.515
MASTER_SITES=	http://www.acme.com/software/http_load/

HOMEPAGE=	http://www.acme.com/software/http_load/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	PREFIX="${PREFIX}"

MAKE_FILE=	${FILESDIR}/Makefile.bsd

WRKDIST=	${WRKDIR}/http_load

.include <bsd.port.mk>
