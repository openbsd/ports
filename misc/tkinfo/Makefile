# OpenBSD makefile for:	tkinfo
# Version required:     1.8
# Date created:         May 20 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 2000/02/12 06:30:00 turan Exp $
#

DISTNAME=	tkinfo-1.8
CATEGORIES=	misc tk80
MASTER_SITES=	http://math-www.uni-paderborn.de/~axel/tkinfo/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

RUN_DEPENDS=	wish8.0:${PORTSDIR}/x11/tk80

NO_BUILD=	yes
MAN1=		tkinfo.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkinfo ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tkinfo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
