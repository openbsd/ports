# Ports collection makefile for	"hoc", the High Order Calculator
# $OpenBSD: Makefile,v 1.5 1999/10/30 20:35:34 brad Exp $

DISTNAME=	hoc
PKGNAME=	hoc-1.1
CATEGORIES=	math
MASTER_SITES=	http://cm.bell-labs.com/cm/cs/who/bwk/
EXTRACT_SUFX=	.sh

EXTRACT_CMD=	${SH}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	# empty

MAINTAINER=	ian@openbsd.org

ALL_TARGET=	hoc
MAKEFILE=	makefile

NO_SUBDIR=	yes
NO_WRKSUBDIR=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hoc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
