# $OpenBSD: Makefile,v 1.2 2002/10/28 19:53:44 naddy Exp $

COMMENT=		"calculates QBUS CSR and Vector assignments"

DISTNAME=		sysgen
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

WRKDIST=		${WRKDIR}
MAN1=			sysgen.1

ALL_TARGET=		sysgen
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${ALL_TARGET} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1

.include <bsd.port.mk>
