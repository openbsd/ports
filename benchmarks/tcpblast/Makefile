# $OpenBSD: Makefile,v 1.6 2000/02/10 23:14:28 espie Exp $

NEED_VERSION=		1.191
DISTNAME=		tcpblast
PKGNAME=		tcpblast-1.0
CATEGORIES=		net benchmarks

MAINTAINER=		ports@openbsd.org

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
