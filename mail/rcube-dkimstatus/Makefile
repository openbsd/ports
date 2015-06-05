# $OpenBSD: Makefile,v 1.2 2015/06/05 06:00:21 robert Exp $

COMMENT=	roundcube plugin: DKIM verification status

GH_ACCOUNT=	JVEHENT
GH_PROJECT=	dkimstatus
GH_TAGNAME=	v0.9.5
DISTNAME=	rcube-dkimstatus-${GH_TAGNAME:S/v//}
DISTFILES=	${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX}
REVISION=	0

CATEGORIES=	mail www

HOMEPAGE=	https://jve.linuxwall.info/blog/index.php?pages/DKIMSTATUS-plugin-for-roundcube

# GPLv2
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
	${INSTALL_DATA_DIR} ${INSTDIR}/dkimstatus
	cp -Rp ${WRKDIST}/* ${INSTDIR}/dkimstatus
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
