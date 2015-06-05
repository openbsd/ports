# $OpenBSD: Makefile,v 1.9 2015/06/05 06:00:22 robert Exp $

COMMENT =	Andrews web libraries for PHP

GITLAB_PROJECT = awl
GITLAB_ACCOUNT = davical-project
GITLAB_TAG =	r0.55
DISTNAME =	${GITLAB_PROJECT}-${GITLAB_TAG:S/r//}
PKGNAME =	php-${DISTNAME}
CATEGORIES =	www
PKG_ARCH =	*
REVISION =	0

HOMEPAGE =	https://gitlab.com/${GITLAB_ACCOUNT}/${GITLAB_PROJECT}

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

DISTFILES =	${DISTNAME}${EXTRACT_SUFX}{archive${EXTRACT_SUFX}?ref=${GITLAB_TAG}}
MASTER_SITES =	https://gitlab.com/${GITLAB_ACCOUNT}/${GITLAB_PROJECT}/repository/

PREFIX =	${VARBASE}/www
WRKDIST =	${WRKDIR}/${GITLAB_PROJECT}.git
INSTDIR =	${PREFIX}/${GITLAB_PROJECT}
SUBST_VARS =	INSTDIR
NO_BUILD =	Yes
NO_TEST =	Yes
MODULES =	lang/php

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/{README,dba,docs,inc} ${INSTDIR}
	rm ${INSTDIR}/inc/AWLUtilities.php.in
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
