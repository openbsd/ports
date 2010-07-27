# $OpenBSD: Makefile,v 1.4 2010/07/27 09:27:23 dcoppa Exp $

SHARED_ONLY=	Yes
COMMENT=	conferencing application for asterisk

V=		1.2
DISTNAME=	appkonference-$V
REVISION=	0

CATEGORIES=	telephony

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=appkonference/$V/}

HOMEPAGE=	http://sourceforge.net/projects/appkonference/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:asterisk->=1.6:telephony/asterisk

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
