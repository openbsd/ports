# $OpenBSD: Makefile,v 1.4 2000/07/09 21:57:38 brad Exp $

ONLY_FOR_ARCHS=	i386
NEED_VERSION=	1.310

PROGRAM_V=	4.73
V2:=${PROGRAM_V:S/.//}

DISTNAME=	navigator-v${V2}-export.x86-bsdi-bsd2
LOCATION=	bsdi21/navigator_standalone
DIRNAME=	navigator-v${V2}.x86-bsdi-bsd2

PKGNAME=	navigator-${PROGRAM_V}

pre-patch:
	@cd ${WRKDIR}/Fortify-1.4.6-unix-src/x86-bsdi-bsd2 && \
	   mkdir nav-4.73 && \
	   cp nav-4.72/morphs-1.2 nav-4.73

.include <bsd.port.mk>
