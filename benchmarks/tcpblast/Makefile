# $OpenBSD: Makefile,v 1.12 2001/05/05 21:59:45 espie Exp $

COMMENT=	"measure the throughput of a tcp connection"
DISTNAME=	tcpblast
PKGNAME=	tcpblast-1.0
CATEGORIES=	net benchmarks
NEED_VERSION=	1.328
# Nothing to fetch
DISTFILES=
NO_CHECKSUM=	Yes

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	BINDIR="${PREFIX}/bin" DESTDIR="${WRKINST}" 

WRKDIST=	${WRKDIR}

# Just link the contained source files into the build environment
post-extract:		
	@lndir ${.CURDIR}/src ${WRKDIR}

.include <bsd.port.mk>
