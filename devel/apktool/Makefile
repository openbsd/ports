# $OpenBSD: Makefile,v 1.21 2019/07/12 20:44:03 sthen Exp $

COMMENT =		tool for reverse engineering Android apk files

DISTNAME =		apktool_2.4.0
REVISION =		1
PKGNAME =		${DISTNAME:S/_/-/}

CATEGORIES =		devel security java

HOMEPAGE =		http://ibotpeaches.github.io/Apktool/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://bitbucket.org/iBotPeaches/apktool/downloads/

EXTRACT_ONLY =
EXTRACT_SUFX =		.jar

INSTALL_DIR =		${PREFIX}/share/apktool/

SUBST_VARS +=		DISTNAME

MODULES =		java
MODJAVA_VER =		1.8+

RUN_DEPENDS =		java/javaPathHelper

do-install:
		${INSTALL_DATA_DIR} ${INSTALL_DIR}
		cp -r ${FULLDISTDIR}/${DISTFILES}	${INSTALL_DIR}
		cp ${FILESDIR}/apktool ${PREFIX}/bin/apktool
		${SUBST_PROGRAM} ${FILESDIR}/apktool ${PREFIX}/bin/apktool

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apktool/
	cp ${WRKSRC}/${DISTNAME} ${PREFIX}/share/apktool/

.include <bsd.port.mk>
