# $OpenBSD: Makefile,v 1.4 2003/06/27 11:37:23 wilfried Exp $

COMMENT=		"No-IP.com Dynamic DNS client"

V=			2.0.12
DISTNAME=		noip-${V}
PKGNAME=		no-ip-${V}
CATEGORIES=		net

HOMEPAGE=		http://www.no-ip.com/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}client/linux/

MAKE_ENV=		SYSCONFDIR="${SYSCONFDIR}"

NO_REGRESS=		Yes

ALL_TARGET=		noip2

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/noip2 ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/no-ip/
	${INSTALL_DATA} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/no-ip/

.include <bsd.port.mk>
