# $OpenBSD: Makefile,v 1.7 2001/08/06 00:41:48 brad Exp $

COMMENT=	"multiprocessing HTTP performance testing client"

DISTNAME=	http_load-05apr2001
PKGNAME=	http_load-20010405
CATEGORIES=	www benchmarks
NEED_VERSION=	1.413
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
