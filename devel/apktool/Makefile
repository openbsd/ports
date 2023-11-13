COMMENT =		tool for reverse engineering Android apk files

DISTNAME =		apktool_2.9.0
PKGNAME =		${DISTNAME:S/_/-/}

CATEGORIES =		devel security java

HOMEPAGE =		http://ibotpeaches.github.io/Apktool/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

SITES =			https://bitbucket.org/iBotPeaches/apktool/downloads/

EXTRACT_ONLY =
EXTRACT_SUFX =		.jar

SUBST_VARS +=		DISTNAME

MODULES =		java
MODJAVA_VER =		1.8+

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
