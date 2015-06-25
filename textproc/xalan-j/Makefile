# $OpenBSD: Makefile,v 1.1.1.1 2015/06/25 13:47:26 kurt Exp $

COMMENT =		apache project to transform xml documents using xslt

VERSION =		2.7.2
DISTNAME =		xalan-j${VERSION}
DISTFILES =             xalan-j_2_7_2-bin.tar.gz
PKGNAME =               xalan-j-${VERSION}
CATEGORIES =		textproc

HOMEPAGE =		http://xalan.apache.org/index.html
MAINTAINER =		Bryan Everly <bryan@bceassociates.com>

MODULES =		java
MODJAVA_VER =		1.7+
MODJAVA_JRERUN =	yes

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes
BUILD_DEPENDS+=         archivers/gtar

MASTER_SITES =          http://mirror.reverse.net/pub/apache/xalan/xalan-j/binaries/
TAR =                   gtar

NO_BUILD =              yes
NO_TEST =               yes

ARCHIVE_DIR =           ${WRKDIR}/xalan-j_2_7_2
INSTALL_DIR =		${MODJAVA_DOC_DIR}/xalan-j
EXAMPLE_DIR = 		${MODJAVA_EXAMPLE_DIR}/xalan-j
JAR_DIR = 		${MODJAVA_JAR_DIR}/xalan-j

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_DIR} ${EXAMPLE_DIR} ${JAR_DIR}
	cp -R ${ARCHIVE_DIR}/samples/* ${EXAMPLE_DIR}
	cp ${ARCHIVE_DIR}/*.txt ${INSTALL_DIR}
	cp ${ARCHIVE_DIR}/*.html ${INSTALL_DIR}
	cp ${ARCHIVE_DIR}/*.jar ${JAR_DIR}

.include <bsd.port.mk>
