# Ports collection makefile for	"hoc", the High Order Calculator
# $OpenBSD: Makefile,v 1.6 2000/02/10 23:14:32 espie Exp $

DISTNAME=	hoc
PKGNAME=	hoc-1.1
CATEGORIES=	math
MASTER_SITES=	http://cm.bell-labs.com/cm/cs/who/bwk/
EXTRACT_SUFX=	.sh
NEED_VERSION=	1.191

EXTRACT_CMD=	${SH}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	# empty

MAINTAINER=	ian@openbsd.org

ALL_TARGET=	hoc
MAKEFILE=	makefile

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hoc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
