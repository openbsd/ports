# Ports collection makefile for	"hoc", the High Order Calculator
# $OpenBSD: Makefile,v 1.4 1999/10/30 11:23:44 turan Exp $

PKGNAME=	hoc-1.1
DISTNAME=	hoc
NO_SUBDIR = 	YES
CATEGORIES=	math
MASTER_SITES =	http://cm.bell-labs.com/cm/cs/who/bwk/

EXTRACT_SUFX=	.sh
EXTRACT_CMD=	/bin/sh
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=

MAKEFILE = makefile
ALL_TARGET = hoc

MAINTAINER=	ian@openbsd.org

NO_WRKSUBDIR=	yes
MAN1=		hoc.1

# This is because we don't use tar+gzip; is there an easier way?
do-extract:
	@mkdir ${WRKDIR}
	@cd ${WRKDIR}; ${EXTRACT_CMD} ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hoc   ${PREFIX}/bin
	${INSTALL_MAN}     ${WRKSRC}/hoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
