# $OpenBSD: Makefile,v 1.2 2019/07/19 02:22:31 lteo Exp $

COMMENT =	build automation tool

DISTNAME =	gradle-5.5.1
EXTRACT_SUFX =	-bin.zip

CATEGORIES =	java

HOMEPAGE =	https://gradle.org/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://services.gradle.org/distributions/

MODULES =		java
MODJAVA_VER =		1.8+

NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		java/javaPathHelper

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/gradle
	cp -r ${WRKSRC}/* ${PREFIX}/share/java/gradle/
	ln -s ${TRUEPREFIX}/share/java/gradle/bin/gradle ${PREFIX}/bin/gradle

.include <bsd.port.mk>
