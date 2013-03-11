# $OpenBSD: Makefile,v 1.26 2013/03/11 11:35:56 espie Exp $

COMMENT=	Lucent remote access RADIUS server

DISTNAME=	radius21
PKGNAME=	radiusd-lucent-2.1
REVISION=	9
CATEGORIES=	net
MASTER_SITES=	http://www.vergenet.net/linux/radius/download/
PATCHFILES=	radius-2.1.comprehensive.6.patch.gz
EXTRACT_SUFX=	.tar.Z

HOMEPAGE=	http://www.vergenet.net/linux/radius/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

WRKDIST=	${WRKDIR}
WRKSRC=		${WRKDIST}/radius/src
MAKE_FLAGS+=	CC="${CC}" CFLAGS="${CFLAGS} -DNOSHADOW -DNDBM" LIBS=""
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/builddbm ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/dbmkeys ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/dbmrec ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/md5test ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/radtest ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/testuser ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/radiusd ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radiusd-lucent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radiusd-lucent/menus
	${INSTALL_DATA} ${WRKDIST}/radius/raddb/clients \
		${PREFIX}/share/examples/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/radius/raddb/dictionary \
		${PREFIX}/share/examples/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/radius/raddb/proxy \
		${PREFIX}/share/examples/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/radius/raddb/users \
		${PREFIX}/share/examples/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/radius/raddb/menus/menu1 \
		${PREFIX}/share/examples/radiusd-lucent/menus/
	${INSTALL_DATA} ${WRKDIST}/radius/raddb/menus/menu2 \
		${PREFIX}/share/examples/radiusd-lucent/menus/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/radiusd-lucent
	${INSTALL_DATA} ${WRKDIST}/radius/LICENSE \
		${PREFIX}/share/doc/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/radius/README \
		${PREFIX}/share/doc/radiusd-lucent/
	${INSTALL_DATA} ${WRKDIST}/radius/README.patched \
		${PREFIX}/share/doc/radiusd-lucent/

.include <bsd.port.mk>
