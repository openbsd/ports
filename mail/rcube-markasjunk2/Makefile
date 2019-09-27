# $OpenBSD: Makefile,v 1.11 2019/09/27 15:39:44 sthen Exp $

COMMENT=	roundcube plugin: add Spam/Ham-buttons

GH_ACCOUNT=	johndoh
GH_PROJECT=	roundcube-markasjunk2
GH_TAGNAME=	1.11.2
PKGNAME=	${DISTNAME:S/roundcube/rcube/}
REVISION=	3

CATEGORIES=	mail www

# GPLv3+
PERMIT_PACKAGE=	Yes

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
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -delete

.include <bsd.port.mk>
