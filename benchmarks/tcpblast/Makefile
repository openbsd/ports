# $OpenBSD: Makefile,v 1.13 2001/06/03 19:40:56 brad Exp $

COMMENT=	"measure the throughput of a TCP connection"

PKGNAME=	tcpblast-1.0
CATEGORIES=	net benchmarks
NEED_VERSION=	1.402
DISTFILES=

MAINTAINER=	ports@openbsd.org

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
