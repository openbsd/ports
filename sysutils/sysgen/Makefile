# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:52 sthen Exp $

COMMENT=		calculates QBUS CSR and Vector assignments

DISTNAME=		sysgen
PKGNAME=		sysgen-0.0
CATEGORIES=		sysutils
MASTER_SITES=		http://ox.compsoc.net/~dankolb/sysgen/
EXTRACT_SUFX=		.tar.Z
MAINTAINER=		Hugh Graham <hugh@openbsd.org>

MAKE_FLAGS=		CFLAGS='${CFLAGS}'

# License: Public Domain

PERMIT_PACKAGE=	Yes
WANTLIB=		c 

WRKDIST=		${WRKDIR}

ALL_TARGET=		sysgen
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${ALL_TARGET} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sysgen.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
