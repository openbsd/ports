# $OpenBSD: Makefile,v 1.21 2013/03/10 23:04:44 espie Exp $

COMMENT=	measure the throughput of a TCP connection

PKGNAME=	tcpblast-1.1
CATEGORIES=	net benchmarks
DISTFILES=

# PD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

FAKE_FLAGS=	BINDIR="${PREFIX}/bin"

NO_CHECKSUM=	Yes

WRKDIST=	${WRKDIR}

MAKE_ENV=	CC="${CC}"

# Just link the contained source files into the build environment
post-extract:		
	@lndir ${.CURDIR}/src ${WRKDIR}

.include <bsd.port.mk>
