# $OpenBSD: Makefile,v 1.12 2016/11/05 05:49:54 rpointel Exp $

COMMENT =		tool for testing security of web applications

VERSION =		1.7.10
DISTNAME =		burpsuite_free_v${VERSION}
PKGNAME =		burpsuite-${VERSION}

DISTFILES=${DISTNAME}${EXTRACT_SUFX}{DownloadUpdate.ashx?Product=Free}

CATEGORIES =		security

HOMEPAGE =		http://portswigger.net/burp/

PERMIT_PACKAGE_CDROM=   https://portswigger.net/burp/eula-free.html
PERMIT_PACKAGE_FTP=     https://portswigger.net/burp/eula-free.html
PERMIT_DISTFILES_FTP=   https://portswigger.net/burp/eula-free.html

MASTER_SITES =		https://portswigger.net/

EXTRACT_ONLY =		
EXTRACT_SUFX =		.jar

MODULES =		java
MODJAVA_VER = 		1.7
MODJAVA_JRERUN =	yes

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/
	cp -r ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} ${PREFIX}/share/java/classes/burpsuite.jar
	${SUBST_PROGRAM} ${FILESDIR}/burpsuite.sh ${PREFIX}/bin/burpsuite

.include <bsd.port.mk>
