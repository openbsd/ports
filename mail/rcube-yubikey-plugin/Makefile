COMMENT=	roundcube plugin: authenticate via Yubikey HTTPS API

GH_ACCOUNT=	northox
GH_PROJECT=	roundcube-yubikey-plugin
GH_TAGNAME=	1.4
PKGNAME=	${DISTNAME:S/roundcube/rcube/}
REVISION=	9

CATEGORIES=	mail www

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
TINSTDIR=	${TRUEPREFIX}/roundcubemail/plugins/yubikey_authentication
INSTDIR=	${WRKINST}${TINSTDIR}
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php

RUN_DEPENDS=	mail/roundcubemail>=0.9 \
		lang/php/${MODPHP_VERSION},-curl \
		www/pear

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKDIST}/* ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*${PATCHORIG} -or -name \*.src \) -delete
	mv ${INSTDIR}/config.inc.php{,.dist}

.include <bsd.port.mk>
