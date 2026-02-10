COMMENT=	larry skin for Roundcube webmail

GH_ACCOUNT=	roundcube
GH_PROJECT=	larry
GH_TAGNAME=	1.6.1

PKGNAME=	rcube-skin-${DISTNAME}

CATEGORIES=	mail www

HOMEPAGE=	https://roundcube.net/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

EPOCH=		0

# CC-BY-SA 3.0
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail/skins/larry
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php

RUN_DEPENDS=	mail/roundcubemail

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && pax -rw * ${INSTDIR}
	rm -r ${INSTDIR}/bin

.include <bsd.port.mk>
