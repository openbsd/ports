# $OpenBSD: Makefile,v 1.10 2002/12/29 15:03:57 fgsch Exp $

COMMENT=	"multiprocessing HTTP performance testing client"

DISTNAME=	http_load-04jan2002
PKGNAME=	http_load-20020104
CATEGORIES=	www benchmarks
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
