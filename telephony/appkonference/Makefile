# $OpenBSD: Makefile,v 1.12 2012/09/28 00:04:17 sthen Exp $

SHARED_ONLY=	Yes
COMMENT=	conferencing application for asterisk
# konference/libwebrtc/typedefs.h
# #error Please add support for your architecture in typedefs.h
ONLY_FOR_ARCHS=	i386 amd64

DISTNAME=	appkonference-2.2
REVISION=	0

CATEGORIES=	telephony

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=appkonference/}

HOMEPAGE=	http://sourceforge.net/projects/appkonference/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c

NO_REGRESS=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	telephony/asterisk>=10.0,<=11.0

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
