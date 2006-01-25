# $OpenBSD: Makefile,v 1.1.1.1 2006/01/25 23:32:13 jolan Exp $

COMMENT=	"alarm library for the lua language"
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

DISTNAME=	lalarm
DATE=		20030709
PKGNAME=	luaalarm-${DATE}
DIST_SUBDIR=	luaalarm-${DATE}
WRKDIST=	${WRKDIR}/alarm
CATEGORIES=	devel

MASTER_SITES=	${HOMEPAGE}
HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
BUILD_DEPENDS=	::lang/lua
RUN_DEPENDS=	${BUILD_DEPENDS}

post-extract:
	@sed -e "s:@alarmpath@:${PREFIX}/lua/luaalarm/?.lua:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luaalarm
	${INSTALL_DATA} ${WRKSRC}/luaalarm.so ${PREFIX}/lib
	${INSTALL_DATA} ${FILESDIR}/alarm.lua ${PREFIX}/lua/luaalarm
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/luaalarm

.include <bsd.port.mk>
