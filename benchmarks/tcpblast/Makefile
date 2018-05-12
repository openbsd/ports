# $OpenBSD: Makefile,v 1.22 2018/05/12 13:58:30 espie Exp $

COMMENT=	measure the throughput of a TCP connection

PKGNAME=	tcpblast-1.1
CATEGORIES=	net benchmarks
DISTFILES=
REVISION =	0

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
