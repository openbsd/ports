# Ports collection makefile for	"hoc", the High Order Calculator
# $OpenBSD: Makefile,v 1.27 2013/03/11 11:23:55 espie Exp $

COMMENT=	from Kernighan & Pike: High Order Calculator

DISTNAME=	hoc
PKGNAME=	hoc-1.1
REVISION=	0
CATEGORIES=	math

MASTER_SITES=	http://cm.bell-labs.com/cm/cs/who/bwk/
EXTRACT_SUFX=	.sh
EXTRACT_CASES=	*.sh) /bin/sh ${FULLDISTDIR}/$$archive;;

MAINTAINER=	Ian Darwin <ian@openbsd.org>

HOMEPAGE=	http://cm.bell-labs.com/cm/cs/who/bwk/

# License is included in the distfile: "Permission to use, copy, 
# modify, and distribute this software... for any purpose and without
# fee.. provided that the copyright notice appear in all copies..."
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

ALL_TARGET=	hoc
MAKE_FILE=	makefile
USE_GROFF =	Yes

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hoc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
