# $OpenBSD: Makefile,v 1.1.1.1 2017/10/10 09:21:11 juanfra Exp $

COMMENT =		mercurial extension to work with nested repositories

MODPY_EGG_VERSION =	0.8
DISTNAME =		py-hgnested-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://bitbucket.org/cedk/hgnested

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://bitbucket.org/cedk/hgnested/get/
DISTFILES =		${DISTNAME}{${MODPY_EGG_VERSION}}${EXTRACT_SUFX}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/mercurial

# requires run-tests.py from devel/mercurial
NO_TEST =		Yes

# Instead of updating WRKDIST manually on every update, just move the directory
post-extract:
	@mv ${WRKDIR}/cedk-hgnested-???????????? ${WRKDIST}

.include <bsd.port.mk>
