# $OpenBSD: Makefile,v 1.2 2018/04/28 10:13:47 danj Exp $

COMMENT =		RubyGems frontend for upt

MODPY_EGG_VERSION =	0.1.1
DISTNAME =		upt-rubygems-${MODPY_EGG_VERSION}

REVISION =		0

HOMEPAGE =		https://framagit.org/upt/upt-rubygems


RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR} \
			textproc/py-semver${MODPY_FLAVOR} \

TEST_DEPENDS =		${RUN_DEPENDS} \
			www/py-requests-mock${MODPY_FLAVOR}


.include <bsd.port.mk>
