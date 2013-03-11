# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:58 espie Exp $

COMMENT=		simple BitTorrent implementation

DISTNAME=		unworkable-0.53
EPOCH=			0
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://code.google.com/p/unworkable/

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://unworkable.googlecode.com/files/

WRKDIST=		${WRKDIR}/unworkable
WANTLIB=		c crypto event

NO_TEST=		Yes

MAKE_FILE=		BSDmakefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unworkable ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/unworkable.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
