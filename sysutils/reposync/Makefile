# $OpenBSD: Makefile,v 1.9 2019/11/14 13:21:42 espie Exp $

COMMENT=	script to update an OpenBSD CVS repository via rsync

PKGNAME=	reposync-0.9
REVISION =	0

CATEGORIES=	sysutils
DISTFILES=
PKG_ARCH =	*

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
