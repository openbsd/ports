# $OpenBSD: Makefile,v 1.2 2000/08/29 16:47:00 danh Exp $

DISTNAME=	radius21
PKGNAME=	radiusd-lucent-2.1
CATEGORIES=	net
NEED_VERSION=	1.319
MASTER_SITES=	ftp://ftp.livingston.com/pub/le/radius/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	danh@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/radius
WRKSRC=		${WRKDIST}/src
MAKE_FLAGS=	EXT='OpenBSD'

post-extract:
	@cp ${FILESDIR}/OpenBSD ${WRKSRC}/conf/OpenBSD

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/OpenBSD/builddbm ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/OpenBSD/dbmkeys ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/OpenBSD/dbmrec ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/OpenBSD/md5test ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/OpenBSD/radtest ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/OpenBSD/testuser ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/OpenBSD/radiusd ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radiusd-lucent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radiusd-lucent/menus
	${INSTALL_DATA} ${WRKDIST}/raddb/clients \
		${PREFIX}/share/examples/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/raddb/config.aeg.example \
		${PREFIX}/share/examples/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/raddb/dictionary \
		${PREFIX}/share/examples/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/raddb/proxy \
		${PREFIX}/share/examples/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/raddb/users \
		${PREFIX}/share/examples/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/raddb/menus/menu1 \
		${PREFIX}/share/examples/radiusd-lucent/menus/
	${INSTALL_DATA} ${WRKDIST}/raddb/menus/menu2 \
		${PREFIX}/share/examples/radiusd-lucent/menus/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/radiusd-lucent
	${INSTALL_DATA} ${WRKDIST}/LICENSE \
		${PREFIX}/share/doc/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/README \
		${PREFIX}/share/doc/radiusd-lucent/

.include <bsd.port.mk>
