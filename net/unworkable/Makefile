# $OpenBSD: Makefile,v 1.1.1.1 2007/11/26 20:37:09 okan Exp $

COMMENT=		simple BitTorrent implementation

DISTNAME=		unworkable-20071120
CATEGORIES=		net

HOMEPAGE=		http://niallohiggins.com/unworkable

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://niallohiggins.com/unworkable/dist/

WRKDIST=		${WRKDIR}/unworkable
WANTLIB=		c crypto event

NO_REGRESS=		Yes

MAKE_FILE=		BSDmakefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unworkable ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/unworkable.cat1 ${PREFIX}/man/man1/unworkable.0

.include <bsd.port.mk>
