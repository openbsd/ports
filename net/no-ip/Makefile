# $OpenBSD: Makefile,v 1.1.1.1 2002/03/08 16:56:10 wilfried Exp $

COMMENT=		"No-IP.com Dynamic DNS client"

DISTNAME=		noip_updater_v1.6
PKGNAME=		no-ip-1.6
CATEGORIES=		net
NEED_VERSION=		1.508

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

ALL_TARGET=		noip

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/noip ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/no-ip.sh ${PREFIX}/sbin/no-ip
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/no-ip/
	${INSTALL_DATA} ${WRKSRC}/no-ip.conf.sample ${PREFIX}/share/examples/no-ip/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/no-ip/
	${INSTALL_DATA} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/no-ip/

.include <bsd.port.mk>
