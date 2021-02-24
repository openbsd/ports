# $OpenBSD: Makefile,v 1.29 2021/02/24 16:49:00 sthen Exp $

COMMENT=	roundcube plugin: context-sensitive menus

GH_ACCOUNT=	johndoh
GH_PROJECT=	roundcube-contextmenu
GH_TAGNAME=	3.2.1
PKGNAME=	${DISTNAME:S/roundcube/rcube/}
REVISION=	0

CATEGORIES=	mail www
HOMEPAGE=	http://www.tehinterweb.co.uk/roundcube/\#picontextmenu

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

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

RUN_DEPENDS=	mail/roundcubemail>=1.3

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/contextmenu
	cp -Rp ${WRKDIST}/* ${INSTDIR}/contextmenu
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -delete

.include <bsd.port.mk>
