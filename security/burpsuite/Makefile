# $OpenBSD: Makefile,v 1.29 2019/06/26 09:48:45 sthen Exp $

COMMENT =		tool for testing security of web applications

VERSION =		1.7.36
DISTNAME =		burpsuite_free_v${VERSION}
PKGNAME =		burpsuite-${VERSION}
REVISION =		1

DISTFILES=${DISTNAME}${EXTRACT_SUFX}{Download?productId=100\&version=${VERSION}\&type=Jar}

CATEGORIES =		security

HOMEPAGE =		https://portswigger.net/burp/

PERMIT_PACKAGE =	https://portswigger.net/burp/eula-free.html
PERMIT_DISTFILES =	https://portswigger.net/burp/eula-free.html

MASTER_SITES =		https://portswigger.net/Burp/Releases/

EXTRACT_ONLY =
EXTRACT_SUFX =		.jar

MODULES =		java
# XXX if updating, please check if it works with jdk 11 and switch to "1.8+" if ok
MODJAVA_VER =		1.8

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/
	cp -r ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} ${PREFIX}/share/java/classes/burpsuite.jar
	${SUBST_PROGRAM} ${FILESDIR}/burpsuite.sh ${PREFIX}/bin/burpsuite

.include <bsd.port.mk>
