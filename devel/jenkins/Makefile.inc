# $OpenBSD: Makefile.inc,v 1.8 2019/07/12 20:44:36 sthen Exp $

COMMENT =		continuous integration server

DISTNAME =		jenkins
EXTRACT_SUFX =		.war
PKGNAME =		jenkins-${VERSION}
DIST_SUBDIR =		jenkins/${VERSION}
FILESDIR ?=		${.CURDIR}/../files
PKGDIR ?=		${.CURDIR}/../pkg
PLIST ?=		${.CURDIR}/pkg/PLIST

CATEGORIES =		devel

HOMEPAGE =		https://jenkins.io/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# Code under MIT license, Artwork under Creative Commons
PERMIT_PACKAGE =	Yes

EXTRACT_ONLY =		# empty

MODULES =		java
MODJAVA_VER =		1.8+
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
