# $OpenBSD: Makefile,v 1.12 2008/06/11 05:04:37 landry Exp $

COMMENT=	alarm library for the lua language
SHARED_ONLY=	Yes

DISTNAME=	lalarm
DATE=		20061011
PKGNAME=	luaalarm-${DATE}p2
# don't use PKGNAME
DIST_SUBDIR=	luaalarm-${DATE}
WRKDIST=	${WRKDIR}/alarm
CATEGORIES=	devel

MASTER_SITES=	${HOMEPAGE}5.0/
HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

# PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/alarm.so ${PREFIX}/lib/lua/5.1

do-regress:
	rm -f ${WRKDIST}/alarm.lua
	cd ${WRKDIST} && ${LOCALBASE}/bin/lua test.lua

.include <bsd.port.mk>
