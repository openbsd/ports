# OpenBSD makefile for:			bs
# Version required:			2.1
# Date created:				May 19 1998
# Whom:					Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 03:09:37 angelos Exp $
#

DISTNAME=		bs-2.1
CATEGORIES=		games
MASTER_SITES=

MAINTAINER=		angelos@openbsd.org

ALL_TARGET=
MAN6=			bs.6

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/bs ${PREFIX}/bin/bs
	@ ${INSTALL_MAN} ${WRKSRC}/bs.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
