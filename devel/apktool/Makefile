COMMENT =		tool for reverse engineering Android apk files

DISTNAME =		apktool_3.0.1
PKGNAME =		${DISTNAME:S/_/-/}

CATEGORIES =		devel security java

HOMEPAGE =		https://apktool.org/

# Apache v2
PERMIT_PACKAGE =	Yes

SITES =			https://bitbucket.org/iBotPeaches/apktool/downloads/

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

EXTRACT_ONLY =
EXTRACT_SUFX =		.jar

SUBST_VARS +=		DISTNAME

MODULES =		java
MODJAVA_VER =		11+

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

INSTALL_DIR =		${PREFIX}/share/apktool/

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_DIR}
	cp -r ${FULLDISTDIR}/${DISTFILES} ${INSTALL_DIR}
	cp ${FILESDIR}/apktool ${PREFIX}/bin/apktool
	${SUBST_PROGRAM} ${FILESDIR}/apktool ${PREFIX}/bin/apktool

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apktool/
	cp ${WRKSRC}/${DISTNAME} ${PREFIX}/share/apktool/

.include <bsd.port.mk>
