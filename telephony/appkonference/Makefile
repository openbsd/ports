# $OpenBSD: Makefile,v 1.9 2012/03/22 21:31:18 sthen Exp $

SHARED_ONLY=	Yes
COMMENT=	conferencing application for asterisk

DISTNAME=	appkonference-2.1

CATEGORIES=	telephony

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=appkonference/}

HOMEPAGE=	http://sourceforge.net/projects/appkonference/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	telephony/asterisk>=1.8,<1.9

MAKE_FLAGS+=	LOCALBASE=${LOCALBASE} \
		DEBUG="${CFLAGS}" \
		ASTERISK=18 \
		ASTERISK_INCLUDE_DIR=${LOCALBASE}/include \
		ASTERISK_INSTALL_MODULES_DIR=${PREFIX}/lib/asterisk/modules \
		ASTERISK_SRC_VERSION=release

WRKDIST=	${WRKDIR}/appkonference
WRKSRC=		${WRKDIST}/konference

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/asterisk/modules
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/app_konference
	${INSTALL_DATA} ${WRKSRC}/app_konference.so \
		${PREFIX}/lib/asterisk/modules
	cd ${WRKSRC}; ${INSTALL_DATA} CHANGES CLI.txt Dialplan.txt README \
		${PREFIX}/share/doc/app_konference

.include <bsd.port.mk>
