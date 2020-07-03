# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:12 sthen Exp $

COMMENT =		RubyGems frontend for upt

MODPY_EGG_VERSION =	0.2
DISTNAME =		upt-rubygems-${MODPY_EGG_VERSION}
REVISION =		1

HOMEPAGE =		https://framagit.org/upt/upt-rubygems

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	upt_rubygems/

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR} \
			textproc/py-semver

TEST_DEPENDS =		www/py-requests-mock${MODPY_FLAVOR}


.include <bsd.port.mk>
