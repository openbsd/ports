# $OpenBSD: Makefile.inc,v 1.2 2013/05/07 16:09:44 ian Exp $

COMMENT =		continuous integration server

DISTNAME =		jenkins
EXTRACT_SUFX =		.war
PKGNAME =		jenkins-${VERSION}
DIST_SUBDIR =		${PKGNAME}
FILESDIR ?=		${.CURDIR}/../files
PKGDIR ?=		${.CURDIR}/../pkg
PLIST ?=		${.CURDIR}/pkg/PLIST

CATEGORIES =		devel

HOMEPAGE =		http://jenkins-ci.org/

MAINTAINER =		Ian Darwin <ian@openbsd.org>

# Code under MIT license, Artwork under Creative Commons
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_ONLY =		# empty

MODULES =		java
MODJAVA_VER =		1.6+
MODJAVA_JRE =		yes

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

HOMEDIR =		/var/jenkins
WARDIR =		${PREFIX}/share/jenkins
BINDIR =		${PREFIX}/bin

SUBST_VARS +=		HOMEDIR

do-install:
	${INSTALL_DATA_DIR} ${WARDIR}
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/jenkins.war ${WARDIR}
