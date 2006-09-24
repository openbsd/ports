# $OpenBSD: Makefile,v 1.4 2006/09/24 17:18:16 pedro Exp $

COMMENT=	"alarm library for the lua language"
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

DISTNAME=	lalarm
DATE=		20030709
PKGNAME=	luaalarm-${DATE}p1
DIST_SUBDIR=	luaalarm-${DATE}
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

BUILD_DEPENDS=	::lang/lua
RUN_DEPENDS=	${BUILD_DEPENDS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/alarm.so ${PREFIX}/lib/lua/5.1

.include <bsd.port.mk>
