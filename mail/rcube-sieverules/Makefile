COMMENT=	roundcube plugin: sieve rules (managesieve)

GH_ACCOUNT=	johndoh
GH_PROJECT=	roundcube-sieverules
GH_TAGNAME=	2.3
PKGNAME=	${DISTNAME:S/roundcube/rcube/}
REVISION=	9

CATEGORIES=	mail www
HOMEPAGE=	http://www.tehinterweb.co.uk/roundcube/\#pisieverules

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

RUN_DEPENDS=	mail/roundcubemail>=1.1

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/sieverules
	cp -Rp ${WRKDIST}/* ${INSTDIR}/sieverules
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*${PATCHORIG} -or -name \*.src \) -delete

.include <bsd.port.mk>
