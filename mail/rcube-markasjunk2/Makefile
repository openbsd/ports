# $OpenBSD: Makefile,v 1.1.1.1 2015/05/04 10:51:29 henning Exp $

COMMENT=	roundcube plugin: add Spam/Ham-buttons

GH_ACCOUNT=	JohnDoh
GH_PROJECT=	Roundcube-Plugin-Mark-as-Junk-2
GH_TAGNAME=	1.9
DISTNAME=	rcube-markasjunk2-${GH_TAGNAME}
DISTFILES=	${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX}

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
RUN_DEPENDS=	mail/roundcubemail>=1.1

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/markasjunk2
	cp -Rp ${WRKDIST}/* ${INSTDIR}/markasjunk2
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
