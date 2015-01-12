# $OpenBSD: Makefile,v 1.16 2015/01/12 08:02:55 benoit Exp $

COMMENT =		mercurial extension to work with git repositories

MODPY_EGG_VERSION =	0.7.0
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

WRKDIST =		${WRKDIR}/durin42-hg-git-fc63d0e2653d

RUN_DEPENDS =		devel/py-dulwich>=0.9.4 \
			devel/mercurial
TEST_DEPENDS =		${RUN_DEPENDS} \
			archivers/bzip2 \
			archivers/unzip \
			devel/py-nose \
			devel/git,-main

pre-test:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

do-test:
	cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} run-tests.py \
	    --with-hg=${LOCALBASE}/bin/hg

.include <bsd.port.mk>
