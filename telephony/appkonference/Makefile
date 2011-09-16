# $OpenBSD: Makefile,v 1.8 2011/09/16 11:41:40 espie Exp $

SHARED_ONLY=	Yes
COMMENT=	conferencing application for asterisk

DISTNAME=	appkonference-1.5
REVISION=	0

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

MAKE_ENV+=	LOCALBASE=${LOCALBASE} \
		ASTERISK_INCLUDE_DIR=${LOCALBASE}/include

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
