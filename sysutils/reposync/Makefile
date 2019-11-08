# $OpenBSD: Makefile,v 1.5 2019/11/08 21:58:58 sthen Exp $

COMMENT=	script to update an OpenBSD CVS repository via rsync

PKGNAME=	reposync-0.6

CATEGORIES=	sysutils
DISTFILES=

# ISC
PERMIT_PACKAGE=	Yes

NO_CHECKSUM=	Yes
NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	net/rsync

do-extract:
	cp ${FILESDIR}/reposync* ${WRKDIR}/

do-install:
	${SUBST_PROGRAM} ${WRKSRC}/reposync ${PREFIX}/bin/reposync
	${INSTALL_MAN} ${WRKSRC}/reposync.1 ${PREFIX}/man/man1/reposync.1

.include <bsd.port.mk>
