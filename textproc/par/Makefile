# OpenBSD makefile for:	Par
# Version required:     1.50
# Date created:         May 17 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/17 04:56:57 angelos Exp $
#

DISTNAME=       Par150
PKGNAME=        par-1.50
CATEGORIES=	textproc
MASTER_SITES=   http://www.cs.berkeley.edu/~amc/Par/

MAINTAINER=	angelos@openbsd.org

ALL_TARGET=
MAN1=		par.1

do-configure:
	(cd ${WRKSRC}; ${CP} protoMakefile Makefile)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/par ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/par.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
