# Ports collection makefile for	"hoc", the High Order Calculator
# $OpenBSD: Makefile,v 1.10 2000/03/24 22:11:49 espie Exp $

DISTNAME=	hoc
PKGNAME=	hoc-1.1
CATEGORIES=	math
NEED_VERSION=	1.210
MASTER_SITES=	http://cm.bell-labs.com/cm/cs/who/bwk/
EXTRACT_SUFX=	.sh

EXTRACT_CMD=	${SH}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	# empty

MAINTAINER=	ian@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

ALL_TARGET=	hoc
MAKE_FILE=	makefile

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hoc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
