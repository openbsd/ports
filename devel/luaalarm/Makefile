# $OpenBSD: Makefile,v 1.7 2007/07/04 19:18:46 jasper Exp $

COMMENT=	"alarm library for the lua language"
SHARED_ONLY=	Yes

DISTNAME=	lalarm
DATE=		20061011
PKGNAME=	luaalarm-${DATE}
DIST_SUBDIR=	${PKGNAME}
WRKDIST=	${WRKDIR}/alarm
CATEGORIES=	devel

MASTER_SITES=	${HOMEPAGE}5.0/
HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

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
