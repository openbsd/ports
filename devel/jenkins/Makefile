# $OpenBSD: Makefile,v 1.10 2013/02/04 16:26:59 jasper Exp $

COMMENT =		continuous integration server

VERSION =		1.500
DISTNAME =		jenkins
PKGNAME =		jenkins-${VERSION}
DIST_SUBDIR =		jenkins-${VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://jenkins-ci.org/

MAINTAINER =		Ian Darwin <ian@openbsd.org>

# Code under MIT license, Artwork under Creative Commons
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://mirrors.jenkins-ci.org/war/${VERSION}/
EXTRACT_ONLY =		# empty
EXTRACT_SUFX =		.war

MODULES =		java
MODJAVA_VER =		1.6+
MODJAVA_JRE =		yes

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_REGRESS =		Yes

HOMEDIR =		/var/jenkins
WARDIR =		${PREFIX}/share/jenkins
BINDIR =		${PREFIX}/bin

SUBST_VARS +=		HOMEDIR

do-install:
	${INSTALL_DATA_DIR} ${WARDIR}
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/jenkins.war ${WARDIR}

.include <bsd.port.mk>
