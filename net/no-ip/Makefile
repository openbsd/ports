# $OpenBSD: Makefile,v 1.14 2008/11/21 07:41:47 wilfried Exp $

COMMENT=		No-IP.com Dynamic DNS client

V=			2.1.8
DISTNAME=		noip-${V}
PKGNAME=		no-ip-${V}p0
CATEGORIES=		net

HOMEPAGE=		http://www.no-ip.com/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}client/linux/

NO_REGRESS=		Yes

ALL_TARGET=		noip2

do-configure:
	@${SUBST_CMD} ${WRKSRC}/noip2.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/noip2 ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/no-ip/
	${INSTALL_DATA} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/no-ip/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/no-ip
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/no-ip/no-ip2.conf

.include <bsd.port.mk>
