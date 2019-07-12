# $OpenBSD: Makefile,v 1.7 2019/07/12 20:50:12 sthen Exp $

COMMENT =		Python module to parse ISO 8601 dates

MODPY_EGG_VERSION =	0.1.12
DISTNAME =		iso8601-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		0

HOMEPAGE =		https://bitbucket.org/micktwomey/pyiso8601

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

do-test: fake
	cd ${WRKSRC}; LC_ALL=C \
	    PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    py.test${MODPY_BIN_SUFFIX} --verbose iso8601

.include <bsd.port.mk>
