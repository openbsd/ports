# $OpenBSD: Makefile,v 1.7 2000/02/12 08:41:08 turan Exp $

NEED_VERSION=		1.191
DISTNAME=		tcpblast
PKGNAME=		tcpblast-1.0
CATEGORIES=		net benchmarks

MAINTAINER=		ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

# Link the contained source files into the build environment
FULLDISTDIR=		${.CURDIR}/src
DISTFILES=		Makefile tcpblast.c
EXTRACT_CMD=		ln
EXTRACT_BEFORE_ARGS=	-sf
EXTRACT_AFTER_ARGS=	${WRKSRC}

NO_CHECKSUM=		yes
WRKDIST=		${WRKDIR}

fetch:
	@true

.include <bsd.port.mk>
