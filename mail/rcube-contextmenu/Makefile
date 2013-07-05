# $OpenBSD: Makefile,v 1.3 2013/07/05 07:38:47 jasper Exp $

COMMENT=	roundcube plugin: context-sensitive menus

DISTNAME=	contextmenu-1.10
PKGNAME=	rcube-${DISTNAME}
CATEGORIES=	mail www
HOMEPAGE=	http://www.tehinterweb.co.uk/roundcube/\#picontextmenu

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://spacehopper.org/mirrors/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
WRKDIST=	${WRKDIR}/contextmenu
INSTDIR=	${PREFIX}/roundcubemail/plugins
TINSTDIR=	${TRUEPREFIX}/roundcubemail/plugins
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
RUN_DEPENDS=	mail/roundcubemail>=0.9

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKDIST} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
