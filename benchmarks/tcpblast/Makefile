# OpenBSD makefile for:	tcpblast
# Version required:	<self contained>
# Date created:		Nov 26 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/27 02:29:24 joey Exp $
#

DISTNAME=	tcpblast
PKGNAME=	tcpblast-1.0
CATEGORIES=	net benchmarks

NO_EXTRACT=	yes
NO_WRKDIR=	yes

fetch:
	@${DO_NADA}

pre-clean:
	@echo "===>  Pre-clean for ${DISTNAME}"
	@(${RM} -f ${.CURDIR}/tcpblast)
	@(cd ${.CURDIR}/src; make clean)

.include <bsd.port.mk>
