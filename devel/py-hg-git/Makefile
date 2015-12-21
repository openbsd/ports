# $OpenBSD: Makefile,v 1.20 2015/12/21 22:16:10 czarkoff Exp $

COMMENT =		mercurial extension to work with git repositories

MODPY_EGG_VERSION =	0.8.3
DISTNAME =		py-hg-git-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://hg-git.github.io/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://bitbucket.org/durin42/hg-git/get/
DISTFILES =		${DISTNAME}{${MODPY_EGG_VERSION}}${EXTRACT_SUFX}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

WRKDIST =		${WRKDIR}/durin42-hg-git-d7ad67f850b2

RUN_DEPENDS =		devel/py-dulwich>=0.10.1 \
			devel/mercurial
TEST_DEPENDS =		${RUN_DEPENDS} \
			archivers/bzip2 \
			archivers/unzip \
			devel/py-nose \
			devel/git,-main

pre-test:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

do-test:
	cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} PYTHONPATH="${WRKSRC}" \
	    ${MODPY_BIN} run-tests.py --with-hg=${LOCALBASE}/bin/hg

.include <bsd.port.mk>
