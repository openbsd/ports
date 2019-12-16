# $OpenBSD: Makefile,v 1.5 2019/12/16 18:35:10 kmos Exp $

COMMENT =		RubyGems frontend for upt

MODPY_EGG_VERSION =	0.2
DISTNAME =		upt-rubygems-${MODPY_EGG_VERSION}

HOMEPAGE =		https://framagit.org/upt/upt-rubygems

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	upt_rubygems/

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR} \
			textproc/py-semver${MODPY_FLAVOR} \

TEST_DEPENDS =		www/py-requests-mock${MODPY_FLAVOR}


.include <bsd.port.mk>
