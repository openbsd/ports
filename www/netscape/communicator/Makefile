# $OpenBSD: Makefile,v 1.4 2000/07/09 21:57:37 brad Exp $

ONLY_FOR_ARCHS=	i386 
NEED_VERSION=	1.310

PROGRAM_V=	4.73
V2:=${PROGRAM_V:S/.//}

DISTNAME=	communicator-v${V2}-export.x86-bsdi-bsd2
LOCATION=	bsdi21/complete_install
DIRNAME=	communicator-v${V2}.x86-bsdi-bsd2

PKGNAME=	communicator-${PROGRAM_V}

pre-patch:
	@cd ${WRKDIR}/Fortify-1.4.6-unix-src/x86-bsdi-bsd2 && \
	   mkdir comm-4.73 && \
	   cp comm-4.72/morphs-1.2 comm-4.73

.include <bsd.port.mk>
