COMMENT=	classic skin for Roundcube webmail

GH_ACCOUNT=	roundcube
GH_PROJECT=	classic
GH_COMMIT=	790857d8f5ec85c6057132b2e075bf263d2630d5
DISTNAME=	classic-1.6.0pl20250801

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
INSTDIR=	${PREFIX}/roundcubemail/skins/classic
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php

RUN_DEPENDS=	mail/roundcubemail

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && pax -rw * ${INSTDIR}
	rm -r ${INSTDIR}/bin

.include <bsd.port.mk>
