# $OpenBSD: Makefile,v 1.12 2019/11/15 00:17:39 sthen Exp $

COMMENT=	script to update an OpenBSD CVS repository via rsync

DISTNAME=	reposync-0.11

CATEGORIES=	sysutils
PKG_ARCH=	*

# ISC
PERMIT_PACKAGE=	Yes

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES=	https://spacehopper.org/mirrors/

NO_BUILD=	Yes

RUN_DEPENDS=	net/rsync

do-install:
	${SUBST_PROGRAM} ${WRKSRC}/reposync ${PREFIX}/bin/reposync
	${SUBST_MAN} ${WRKSRC}/reposync.1 ${PREFIX}/man/man1/reposync.1

do-test:
	ksh -n ${WRKSRC}/reposync

.include <bsd.port.mk>
