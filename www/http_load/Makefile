# $OpenBSD: Makefile,v 1.9 2002/05/16 02:04:53 avsm Exp $

COMMENT=	"multiprocessing HTTP performance testing client"

DISTNAME=	http_load-04jan2002
PKGNAME=	http_load-20020104
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

.include <bsd.port.mk>
