# OpenBSD makefile for:		nulib
# Version required:     3.25
# Date created:         24 November 1997
# Whom:                 angelos
#
# $OpenBSD: Makefile,v 1.3 1998/10/06 20:36:59 marc Exp $
#

BROKEN=		"source file no longer available"

DISTNAME=       nulib-3.25
CATEGORIES=	archivers
NO_CDROM=	"NOFEE: Can not sell"
MASTER_SITES=	ftp://apple2.caltech.edu//Zocalo/pub/apple2/ARCHIVERS/
DISTFILES=	nulib325.tar.Z
WRKSRC=		${WRKDIR}/nulib

MAINTAINER=     angelos@openbsd.org

MAN1=		nulib.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nulib ${PREFIX}/bin/nulib
	${INSTALL_MAN} ${WRKSRC}/nulib.1 ${PREFIX}/man/man1/nulib.1

.include <bsd.port.mk>
