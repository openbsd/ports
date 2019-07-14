# $OpenBSD: Makefile,v 1.6 2019/07/14 00:39:35 naddy Exp $

COMMENT =		online help system for java platform applications

VERSION =		2.0.05
VERSION_ =		${VERSION:S/./_/g}
DISTNAME =		javahelp${VERSION}
DISTFILES =		javahelp${VERSION_}.zip
PKGNAME =		javahelp-${VERSION}
CATEGORIES =		devel
REVISION =		2

HOMEPAGE =		https://javahelp.java.net/
MAINTAINER =		Bryan Everly <bryan@bceassociates.com>

MODULES =		java
MODJAVA_VER =		1.8+

RUN_DEPENDS =		java/javaPathHelper

# Sun Binary Code License
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://www.intricatesoftware.com/distfiles/

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/jh${VERSION:R}
INSTALL_DIR =		${MODJAVA_DOC_DIR}/javahelp
EXAMPLE_DIR =		${MODJAVA_EXAMPLE_DIR}/javahelp
JAR_DIR =		${MODJAVA_JAR_DIR}/javahelp

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_DIR} ${EXAMPLE_DIR} ${JAR_DIR}/bin ${JAR_DIR}/lib
	cp ${WRKDIST}/README ${INSTALL_DIR}
	cp ${WRKDIST}/*.html ${INSTALL_DIR}
	cp ${WRKDIST}/src.jar ${INSTALL_DIR}
	cp -R ${WRKDIST}/doc ${INSTALL_DIR}
	cp -R ${WRKDIST}/demos ${EXAMPLE_DIR}
	cp -R ${WRKDIST}/javahelp/lib/* ${JAR_DIR}/lib/
	cp -R ${WRKDIST}/javahelp/bin/*.jar ${JAR_DIR}/bin/
	${INSTALL_PROGRAM} ${FILESDIR}/jhsearch ${PREFIX}/bin/jhsearch
	${SUBST_PROGRAM} ${FILESDIR}/jhsearch ${PREFIX}/bin/jhsearch
	${INSTALL_PROGRAM} ${FILESDIR}/jhindexer ${PREFIX}/bin/jhindexer
	${SUBST_PROGRAM} ${FILESDIR}/jhindexer ${PREFIX}/bin/jhindexer

.include <bsd.port.mk>
