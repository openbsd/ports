# $OpenBSD: Makefile,v 1.17 2015/05/18 11:29:37 jasper Exp $

COMMENT=	alarm library for the lua language
SHARED_ONLY=	Yes

DISTNAME=	lalarm
DATE=		20061011
PKGNAME=	luaalarm-${DATE}
REVISION =	3
# don't use PKGNAME
DIST_SUBDIR=	luaalarm-${DATE}
WRKDIST=	${WRKDIR}/alarm
CATEGORIES=	devel

MASTER_SITES=	${HOMEPAGE}5.0/
HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

# PD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/lua

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/alarm.so ${MODLUA_LIBDIR}

do-test:
	rm ${WRKDIST}/alarm.lua
	cd ${WRKDIST} && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
