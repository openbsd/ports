# $OpenBSD: Makefile,v 1.4 1999/04/01 02:57:54 brad Exp $

DISTNAME=		tcpblast
PKGNAME=		tcpblast-1.0
CATEGORIES=		net benchmarks

MAINTAINER=		ports@openbsd.org

# Link the contained source files into the build environment
_DISTDIR=		${.CURDIR}/src
DISTFILES=		Makefile tcpblast.c
EXTRACT_CMD=		${LN}
EXTRACT_BEFORE_ARGS=	-sf
EXTRACT_AFTER_ARGS=	${WRKSRC}

NO_CHECKSUM=		yes
NO_WRKSUBDIR=		yes

fetch:
	@${DO_NADA}

.include <bsd.port.mk>
