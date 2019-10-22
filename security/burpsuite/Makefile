# $OpenBSD: Makefile,v 1.32 2019/10/22 02:09:18 lteo Exp $

COMMENT =		tool for testing security of web applications

VERSION =		2.1.04
DISTNAME =		burpsuite_free_v${VERSION}
PKGNAME =		burpsuite-${VERSION}

DISTFILES=${DISTNAME}${EXTRACT_SUFX}{Download?productId=100\&version=${VERSION}\&type=Jar}

CATEGORIES =		security

HOMEPAGE =		https://portswigger.net/burp/

PERMIT_PACKAGE =	https://portswigger.net/burp/eula/community
PERMIT_DISTFILES =	https://portswigger.net/burp/eula/community

MASTER_SITES =		https://portswigger.net/Burp/Releases/

EXTRACT_ONLY =
EXTRACT_SUFX =		.jar

MODULES =		java
MODJAVA_VER =		1.8+

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/
	cp -r ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${PREFIX}/share/java/classes/burpsuite.jar
	${SUBST_PROGRAM} ${FILESDIR}/burpsuite.sh ${PREFIX}/bin/burpsuite

.include <bsd.port.mk>
