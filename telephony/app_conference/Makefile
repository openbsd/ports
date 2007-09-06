# $OpenBSD: Makefile,v 1.3 2007/09/06 12:31:31 sthen Exp $
SHARED_ONLY=	Yes

COMMENT=	"conferencing application for asterisk"
DISTNAME=	app_conference-20070809
CATEGORIES=	telephony
MASTER_SITES=	http://spacehopper.org/

HOMEPAGE=	http://sourceforge.net/projects/appconference/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:asterisk->=1.4:telephony/asterisk

MAKE_ENV+=	LOCALBASE=${LOCALBASE} \
		ASTERISK_INCLUDE_DIR=${LOCALBASE}/include

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/asterisk/modules
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/app_conference
	${INSTALL_DATA} ${WRKSRC}/app_conference.so \
		${PREFIX}/lib/asterisk/modules
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/app_conference

.include <bsd.port.mk>
