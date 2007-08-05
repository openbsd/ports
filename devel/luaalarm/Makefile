# $OpenBSD: Makefile,v 1.10 2007/08/05 12:34:33 mbalmer Exp $

COMMENT=	"alarm library for the lua language"
SHARED_ONLY=	Yes

DISTNAME=	lalarm
DATE=		20061011
PKGNAME=	luaalarm-${DATE}p1
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

RUN_DEPENDS=	::lang/lua
BUILD_DEPENDS=	${RUN_DEPENDS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/alarm.so ${PREFIX}/lib/lua/5.1

do-regress:
	rm -f ${WRKDIST}/alarm.lua
	cd ${WRKDIST} && ${LOCALBASE}/bin/lua test.lua

.include <bsd.port.mk>
