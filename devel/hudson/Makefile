# $OpenBSD: Makefile,v 1.15 2014/05/07 15:42:15 kurt Exp $

COMMENT =		continuous integration server

VERSION =		1.365
# nonsensical versioning, alas.
DISTNAME =		hudson
REVISION =		4
PKGNAME =		hudson-${VERSION}
DIST_SUBDIR =		hudson-${VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://hudson-ci.org/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Code under MIT license, Artwork under Creative Commons, 
# See http://hudson.gotdns.com/wiki/display/HUDSON/Use+Hudson#UseHudson-License
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://hudson-ci.org/download/war/${VERSION}/
EXTRACT_ONLY =		
EXTRACT_SUFX =		.war

MODULES =		java
MODJAVA_VER =		1.6+
MODJAVA_JRE =		yes

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

HOMEDIR =		/var/hudson
WARDIR =		${PREFIX}/share/hudson
BINDIR =		${PREFIX}/bin

SUBST_VARS +=		HOMEDIR

do-install:
	${INSTALL_DATA_DIR} ${WARDIR}
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/hudson.war ${WARDIR}
	${INSTALL_DATA} ${FILESDIR}/hudson ${WRKDIST}
	${SUBST_CMD} ${WRKDIST}/hudson
	${INSTALL_SCRIPT} ${WRKDIST}/hudson ${BINDIR}

.include <bsd.port.mk>
