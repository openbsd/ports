# $OpenBSD: Makefile,v 1.15 2017/01/17 16:16:02 jca Exp $

COMMENT=		simple BitTorrent implementation

DISTNAME=		unworkable-0.53
EPOCH=			0
REVISION=		2
CATEGORIES=		net

HOMEPAGE=		https://github.com/niallo/Unworkable

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_GOOGLECODE:=unworkable/}

WRKDIST=		${WRKDIR}/unworkable
WANTLIB=		c crypto event

NO_TEST=		Yes

MAKE_FILE=		BSDmakefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unworkable ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/unworkable.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
