# $OpenBSD: Makefile,v 1.9 2000/03/24 22:11:36 espie Exp $

DISTNAME=		tcpblast
PKGNAME=		tcpblast-1.0
CATEGORIES=		net benchmarks
NEED_VERSION=		1.191

MAINTAINER=		ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

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
