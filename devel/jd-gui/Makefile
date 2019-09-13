# $OpenBSD: Makefile,v 1.12 2019/09/13 08:05:44 rpointel Exp $

COMMENT =		yet another fast Java decompiler

VERSION =		1.6.3
DISTNAME =		jd-gui-${VERSION}

CATEGORIES =		devel security

HOMEPAGE =		http://jd.benow.ca/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/java-decompiler/jd-gui/releases/download/v${VERSION}/

EXTRACT_ONLY =
EXTRACT_SUFX =		.jar

MODULES =		java
MODJAVA_VER =		1.8+

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/
	cp -r ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} ${PREFIX}/share/java/classes/jd-gui.jar
	${SUBST_PROGRAM} ${FILESDIR}/jd-gui.sh ${PREFIX}/bin/jd-gui

.include <bsd.port.mk>
