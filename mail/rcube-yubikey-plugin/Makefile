# $OpenBSD: Makefile,v 1.10 2018/05/22 08:19:06 sthen Exp $

COMMENT=	roundcube plugin: authenticate via Yubikey HTTPS API

GH_ACCOUNT=	northox
GH_PROJECT=	roundcube-yubikey-plugin
GH_TAGNAME=	1.4
REVISION=	0

PKGNAME=	rcube-yubikey-plugin-${GH_TAGNAME}
CATEGORIES=	mail www

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;
	mv ${INSTDIR}/config.inc.php{,.dist}

.include <bsd.port.mk>
