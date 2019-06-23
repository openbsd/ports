# $OpenBSD: Makefile,v 1.4 2019/06/23 14:56:55 danj Exp $

COMMENT =		RubyGems frontend for upt

MODPY_EGG_VERSION =	0.2
DISTNAME =		upt-rubygems-${MODPY_EGG_VERSION}

HOMEPAGE =		https://framagit.org/upt/upt-rubygems


RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR} \
			textproc/py-semver${MODPY_FLAVOR} \

TEST_DEPENDS =		${RUN_DEPENDS} \
			www/py-requests-mock${MODPY_FLAVOR}


.include <bsd.port.mk>
