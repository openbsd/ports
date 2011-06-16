# $OpenBSD: Makefile,v 1.10 2011/06/16 20:49:11 sthen Exp $

COMMENT=		simple BitTorrent implementation

DISTNAME=		unworkable-0.53
EPOCH=			0
CATEGORIES=		net

HOMEPAGE=		http://p2presearch.com/unworkable

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://p2presearch.com/unworkable/dist/

WRKDIST=		${WRKDIR}/unworkable
WANTLIB=		c crypto event

NO_REGRESS=		Yes

USE_GROFF=		Yes
MAKE_FILE=		BSDmakefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unworkable ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/unworkable.cat1 ${PREFIX}/man/man1/unworkable.0

.include <bsd.port.mk>
