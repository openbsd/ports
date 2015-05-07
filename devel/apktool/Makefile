# $OpenBSD: Makefile,v 1.2 2015/05/07 15:22:57 sthen Exp $

COMMENT =		tool for reverse engineering Android apk files

DISTNAME =		apktool_2.0.0
PKGNAME =		apktool-2.0.0
REVISION =		0

CATEGORIES =		devel security java

HOMEPAGE =		http://ibotpeaches.github.io/Apktool/

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://bitbucket.org/iBotPeaches/apktool/downloads/

EXTRACT_ONLY =
EXTRACT_SUFX =		.jar

INSTALL_DIR =		${PREFIX}/share/apktool/

SUBST_VARS +=		DISTNAME

MODULES =		java
MODJAVA_VER =		1.7
MODJAVA_JRERUN =	yes

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
