# $OpenBSD: Makefile,v 1.14 2001/10/28 13:05:45 espie Exp $

COMMENT=	"measure the throughput of a TCP connection"

PKGNAME=	tcpblast-1.0
CATEGORIES=	net benchmarks
NEED_VERSION=	1.402
DISTFILES=

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	BINDIR="${PREFIX}/bin" DESTDIR="${WRKINST}" 

NO_CHECKSUM=	Yes

WRKDIST=	${WRKDIR}

# Just link the contained source files into the build environment
post-extract:		
	@lndir ${.CURDIR}/src ${WRKDIR}

.include <bsd.port.mk>
