# $OpenBSD: Makefile,v 1.15 2002/03/21 20:35:43 espie Exp $

COMMENT=	"measure the throughput of a TCP connection"

PKGNAME=	tcpblast-1.0
CATEGORIES=	net benchmarks
NEED_VERSION=	1.515
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
