# $OpenBSD: Makefile,v 1.6 2019/12/17 14:12:36 kmos Exp $

COMMENT =		RubyGems frontend for upt

MODPY_EGG_VERSION =	0.2
DISTNAME =		upt-rubygems-${MODPY_EGG_VERSION}
REVISION =		0

HOMEPAGE =		https://framagit.org/upt/upt-rubygems

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	upt_rubygems/

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR} \
			textproc/py-semver

TEST_DEPENDS =		www/py-requests-mock${MODPY_FLAVOR}


.include <bsd.port.mk>
