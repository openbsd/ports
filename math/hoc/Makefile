# New ports collection makefile for:	hoc
# Version required:		1.1
# Date created:			Tue Sep 15 17:48:34 EDT 1998
# Whom:				Ian Darwin
#
# $OpenBSD: Makefile,v 1.2 1998/09/16 19:43:02 ian Exp $
#

PKGNAME=	hoc-1.1
DISTNAME=	hoc
NO_SUBDIR = YES
CATEGORIES=	math
MASTER_SITES= http://cm.bell-labs.com/cm/cs/who/bwk/

EXTRACT_SUFX=	.sh
EXTRACT_CMD=	/bin/sh
EXTRACT_BEFORE_ARGS =

MAKEFILE = makefile
ALL_TARGET = hoc

MAINTAINER=	ian@openbsd.org

NO_WRKSUBDIR=	yes
MAN1=		hoc.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hoc   ${PREFIX}/bin
	${INSTALL_MAN}     ${WRKSRC}/hoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
