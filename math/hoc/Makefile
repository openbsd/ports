# Ports collection makefile for	"hoc", the High Order Calculator
# $OpenBSD: Makefile,v 1.23 2006/10/29 23:14:43 ian Exp $

COMMENT=	"from Kernighan & Pike: High Order Calculator"

DISTNAME=	hoc
PKGNAME=	hoc-1.1p0
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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

ALL_TARGET=	hoc
MAKE_FILE=	makefile

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hoc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
