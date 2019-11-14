# $OpenBSD: Makefile,v 1.10 2019/11/14 21:39:11 kn Exp $

COMMENT=	script to update an OpenBSD CVS repository via rsync

PKGNAME=	reposync-0.10

CATEGORIES=	sysutils
DISTFILES=
PKG_ARCH =	*

# ISC
PERMIT_PACKAGE=	Yes

NO_CHECKSUM=	Yes
NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	net/rsync

do-install:
	ksh -n ${FILESDIR}/reposync
	${INSTALL_SCRIPT} ${FILESDIR}/reposync ${PREFIX}/bin/
	${INSTALL_MAN} ${FILESDIR}/reposync.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
