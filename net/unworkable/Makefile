# $OpenBSD: Makefile,v 1.18 2021/11/23 20:55:12 tb Exp $

COMMENT=		simple BitTorrent implementation

DISTNAME=		unworkable-0.53
EPOCH=			0
REVISION=		4
CATEGORIES=		net

HOMEPAGE=		https://github.com/niallo/Unworkable

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_GOOGLECODE:=unworkable/}

WRKDIST=		${WRKDIR}/unworkable
WANTLIB=		c crypto event

NO_TEST=		Yes

MAKE_FILE=		BSDmakefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unworkable ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/unworkable.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
