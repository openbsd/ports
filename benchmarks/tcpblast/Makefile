# $OpenBSD: Makefile,v 1.5 1999/09/22 10:34:03 espie Exp $

NEED_VERSION=		1.116
DISTNAME=		tcpblast
PKGNAME=		tcpblast-1.0
CATEGORIES=		net benchmarks

MAINTAINER=		ports@openbsd.org

# Link the contained source files into the build environment
FULLDISTDIR=		${.CURDIR}/src
DISTFILES=		Makefile tcpblast.c
EXTRACT_CMD=		${LN}
EXTRACT_BEFORE_ARGS=	-sf
EXTRACT_AFTER_ARGS=	${WRKSRC}

NO_CHECKSUM=		yes
NO_WRKSUBDIR=		yes

fetch:
	@${DO_NADA}

.include <bsd.port.mk>
