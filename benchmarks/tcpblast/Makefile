# $OpenBSD: Makefile,v 1.10 2000/04/08 20:37:26 espie Exp $

DISTNAME=		tcpblast
PKGNAME=		tcpblast-1.0
CATEGORIES=		net benchmarks
NEED_VERSION=		1.230

MAINTAINER=		ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
NO_CHECKSUM=		Yes
WRKDIST=		${WRKDIR}
FAKE=			Yes
FAKE_FLAGS=	BINDIR="${PREFIX}/bin" DESTDIR="${WRKINST}" 

# Nothing to fetch
DISTFILES=

# Just link the contained source files into the build environment

post-extract:		
	lndir ${.CURDIR}/src ${WRKDIR}

.include <bsd.port.mk>
