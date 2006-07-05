# $OpenBSD: Makefile,v 1.5 2006/07/05 07:24:27 espie Exp $

COMMENT=		"calculates QBUS CSR and Vector assignments"

DISTNAME=		sysgen
PKGNAME=		sysgen-0.0
CATEGORIES=		sysutils
MASTER_SITES=		http://ox.compsoc.net/~dankolb/sysgen/
EXTRACT_SUFX=		.tar.Z
MAINTAINER=		Hugh Graham <hugh@openbsd.org>

MAKE_FLAGS=		CFLAGS='${CFLAGS}'

# License: Public Domain

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

WRKDIST=		${WRKDIR}

ALL_TARGET=		sysgen
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${ALL_TARGET} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sysgen.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
