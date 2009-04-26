# $OpenBSD: Makefile,v 1.6 2009/04/26 09:38:25 sthen Exp $

COMMENT =		continuous integration server

VERSION =		1.227
DISTNAME =		hudson # nonsensical versioning, alas.
PKGNAME =		hudson-${VERSION}p1
DIST_SUBDIR =		hudson-${VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://hudson.dev.java.net/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Code under MIT license, Artwork under Creative Commons, 
# See http://hudson.gotdns.com/wiki/display/HUDSON/Use+Hudson#UseHudson-License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		https://hudson.dev.java.net/files/documents/2402/100759/
EXTRACT_ONLY =		
EXTRACT_SUFX =		.war

MODULES =		java
MODJAVA_VER =		1.6+
MODJAVA_JRE =		yes

RUN_DEPENDS =		::java/javaPathHelper

NO_BUILD =		Yes
NO_REGRESS =		Yes

HOMEDIR =		/var/hudson
WARDIR =		${PREFIX}/share/hudson
BINDIR =		${PREFIX}/bin

SUBST_VARS +=		HOMEDIR

do-install:
	${INSTALL_DATA_DIR} ${WARDIR}
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/hudson.war ${WARDIR}
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${WARDIR}
	${INSTALL_DATA} ${FILESDIR}/hudson ${WRKDIST}
	${SUBST_CMD} ${WRKDIST}/hudson
	${INSTALL_SCRIPT} ${WRKDIST}/hudson ${BINDIR}

.include <bsd.port.mk>
