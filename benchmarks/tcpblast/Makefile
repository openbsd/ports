# $OpenBSD: Makefile,v 1.20 2008/01/04 17:48:33 espie Exp $

COMMENT=	measure the throughput of a TCP connection

PKGNAME=	tcpblast-1.1
CATEGORIES=	net benchmarks
DISTFILES=

# PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

FAKE_FLAGS=	BINDIR="${PREFIX}/bin"

NO_CHECKSUM=	Yes

WRKDIST=	${WRKDIR}

MAKE_ENV=	CC="${CC}"

# Just link the contained source files into the build environment
post-extract:		
	@lndir ${.CURDIR}/src ${WRKDIR}

.include <bsd.port.mk>
