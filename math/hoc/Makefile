# Ports collection makefile for	"hoc", the High Order Calculator
# $OpenBSD: Makefile,v 1.7 2000/02/12 06:29:58 turan Exp $

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

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

ALL_TARGET=	hoc
MAKEFILE=	makefile

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hoc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
