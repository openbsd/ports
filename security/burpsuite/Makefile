# $OpenBSD: Makefile,v 1.1.1.1 2015/05/19 11:30:14 rpointel Exp $

COMMENT =		tool for testing security of web applications

VERSION =		1.6.01
DISTNAME =		burpsuite_free_v${VERSION}
PKGNAME =		burpsuite-${VERSION}

CATEGORIES =		security

HOMEPAGE =		http://portswigger.net/burp/

# http://portswigger.net/burp/eula-free.html
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

EXTRACT_ONLY =		
EXTRACT_SUFX =		.jar

MODULES =		java
MODJAVA_VER = 		1.7
MODJAVA_JRERUN =	yes

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/
	cp -r ${FULLDISTDIR}/${DISTFILES} ${PREFIX}/share/java/classes/burpsuite.jar
	${SUBST_PROGRAM} ${FILESDIR}/burpsuite.sh ${PREFIX}/bin/burpsuite

.include <bsd.port.mk>
