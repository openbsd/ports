# $OpenBSD: Makefile,v 1.9 2021/11/08 11:38:41 rsadowski Exp $

COMMENT =		apache project to transform xml documents using xslt

VERSION =		2.7.2
VERSION_=		${VERSION:S/./_/g}
DISTNAME =		xalan-j${VERSION}
DISTFILES =		xalan-j_${VERSION_}-bin.tar.gz
PKGNAME =		xalan-j-${VERSION}
CATEGORIES =		textproc
REVISION =		4

HOMEPAGE =		https://xalan.apache.org/
MAINTAINER =		Bryan Everly <bryan@bceassociates.com>

MODULES =		java
MODJAVA_VER =		1.8+

# Apache 2.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://mirror.reverse.net/pub/apache/xalan/xalan-j/binaries/

BUILD_DEPENDS =		archivers/gtar
TAR =			gtar

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/xalan-j_${VERSION_}
INSTALL_DIR =		${MODJAVA_DOC_DIR}/xalan-j
EXAMPLE_DIR =		${MODJAVA_EXAMPLE_DIR}/xalan-j
JAR_DIR =		${MODJAVA_JAR_DIR}/xalan-j

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_DIR} ${EXAMPLE_DIR} ${JAR_DIR}
	cp -R ${WRKDIST}/samples/* ${EXAMPLE_DIR}
	cp ${WRKDIST}/*.{html,txt} ${INSTALL_DIR}
	cp ${WRKDIST}/*.jar ${JAR_DIR}

.include <bsd.port.mk>
