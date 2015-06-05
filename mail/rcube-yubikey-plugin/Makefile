# $OpenBSD: Makefile,v 1.7 2015/06/05 06:00:21 robert Exp $

COMMENT=	roundcube plugin: authenticate via Yubikey HTTPS API

V=		1.3
DISTNAME=	rcube-yubikey-plugin-1.3
DISTFILES=	${DISTNAME}{$V}.tar.gz
CATEGORIES=	mail www
HOMEPAGE=	https://github.com/northox/roundcube-yubikey-plugin\#readme
REVISION=	0

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/northox/roundcube-yubikey-plugin/archive/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
WRKDIST=	${WRKDIR}/roundcube-yubikey-plugin-$V
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
