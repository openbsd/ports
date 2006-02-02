# $OpenBSD: Makefile,v 1.2 2006/02/02 04:42:43 jolan Exp $
SHARED_ONLY=	Yes

COMMENT=	"conferencing application for asterisk"
DISTNAME=	app_conference-20060201
CATEGORIES=	telephony
MASTER_SITES=	http://mirrors.protection.cx/~jolan/

HOMEPAGE=	http://iaxclient.sourceforge.net/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::telephony/asterisk

MAKE_ENV+=	LOCALBASE=${LOCALBASE}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/asterisk/modules
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/app_conference
	${INSTALL_DATA} ${WRKSRC}/app_conference.so \
		${PREFIX}/lib/asterisk/modules
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/app_conference

.include <bsd.port.mk>
