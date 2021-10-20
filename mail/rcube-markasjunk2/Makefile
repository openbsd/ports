# $OpenBSD: Makefile,v 1.15 2021/10/20 09:00:18 sthen Exp $

COMMENT=	roundcube plugin: add Spam/Ham-buttons

GH_ACCOUNT=	johndoh
GH_PROJECT=	roundcube-markasjunk2
GH_TAGNAME=	1.11.2
PKGNAME=	${DISTNAME:S/roundcube/rcube/}
REVISION=	5

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

RUN_DEPENDS=	mail/roundcubemail>=1.3.6

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/markasjunk2
	cp -Rp ${WRKDIST}/* ${INSTDIR}/markasjunk2
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*${PATCHORIG} -or -name \*.src \) -delete

.include <bsd.port.mk>
