# OpenBSD makefile for:	tcpblast
# Version required:	<self contained>
# Date created:		Nov 26 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.2 1998/02/13 07:43:49 niklas Exp $
#

DISTNAME=		tcpblast
PKGNAME=		tcpblast-1.0
CATEGORIES=		net benchmarks

NO_CHECKSUM=		yes
NO_WRKSUBDIR=		yes

# Link the contained source files into the build environment
_DISTDIR=		${.CURDIR}/src
DISTFILES=		Makefile tcpblast.c
EXTRACT_CMD=		${LN}
EXTRACT_BEFORE_ARGS=	-sf
EXTRACT_AFTER_ARGS=	${WRKSRC}

fetch:
	@${DO_NADA}

.include <bsd.port.mk>
