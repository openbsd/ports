# $OpenBSD: Makefile,v 1.3 2002/07/30 14:36:50 brad Exp $

COMMENT=	"HTTP latency performance testing client"

DISTNAME=	http_ping_09jul2001
PKGNAME=	http_ping-20010709
CATEGORIES=	www benchmarks
MASTER_SITES=	http://www.acme.com/software/http_ping/

HOMEPAGE=	http://www.acme.com/software/http_ping/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	PREFIX="${PREFIX}"

MAKE_FILE=	${FILESDIR}/Makefile.bsd

WRKDIST=	${WRKDIR}/http_ping

.include <bsd.port.mk>
