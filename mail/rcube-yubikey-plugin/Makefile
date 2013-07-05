# $OpenBSD: Makefile,v 1.2 2013/07/05 07:38:47 jasper Exp $

COMMENT=	roundcube plugin: authenticate via Yubikey HTTPS API

CID=		ca023d6dfe2ca4d6fd6049d250f0044ec6b357c6
DISTNAME=	rcube-yubikey-plugin-0.20130430
DISTFILES=	${DISTNAME}.tar.gz{${CID}.tar.gz}
CATEGORIES=	mail www
HOMEPAGE=	https://github.com/northox/roundcube-yubikey-plugin\#readme

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/northox/roundcube-yubikey-plugin/archive/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
WRKDIST=	${WRKDIR}/roundcube-yubikey-plugin-${CID}
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
