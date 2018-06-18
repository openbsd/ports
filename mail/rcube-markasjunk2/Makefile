# $OpenBSD: Makefile,v 1.5 2018/06/18 11:46:12 sthen Exp $

COMMENT=	roundcube plugin: add Spam/Ham-buttons

GH_ACCOUNT=	johndoh
GH_PROJECT=	roundcube-markasjunk2
GH_TAGNAME=	1.11.2
PKGNAME=	${DISTNAME:S/roundcube/rcube/}

CATEGORIES=	mail www

HOMEPAGE=	https://github.com/JohnDoh/Roundcube-Plugin-Mark-as-Junk-2/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail/plugins
TINSTDIR=	${TRUEPREFIX}/roundcubemail/plugins
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
RUN_DEPENDS=	mail/roundcubemail>=1.3.6

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/markasjunk2
	cp -Rp ${WRKDIST}/* ${INSTDIR}/markasjunk2
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
