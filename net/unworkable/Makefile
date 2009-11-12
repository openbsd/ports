# $OpenBSD: Makefile,v 1.7 2009/11/12 20:22:27 benoit Exp $

COMMENT=		simple BitTorrent implementation

DISTNAME=		unworkable-0.52
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

MAKE_FILE=		BSDmakefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unworkable ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/unworkable.cat1 ${PREFIX}/man/man1/unworkable.0

.include <bsd.port.mk>
