# $OpenBSD: Makefile,v 1.6 2004/12/11 13:29:21 alek Exp $

COMMENT=	"HTTP latency performance testing client"

DISTNAME=	http_ping_03apr2002
PKGNAME=	http_ping-20020403
CATEGORIES=	www benchmarks

HOMEPAGE=	http://www.acme.com/software/http_ping/

MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl 

FAKE_FLAGS=	PREFIX="${PREFIX}"

MAKE_FILE=	${FILESDIR}/Makefile.bsd

WRKDIST=	${WRKDIR}/http_ping

.include <bsd.port.mk>
