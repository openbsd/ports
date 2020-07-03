# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:14 sthen Exp $

COMMENT =		Python module to parse ISO 8601 dates

MODPY_EGG_VERSION =	0.1.12
DISTNAME =		iso8601-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		1

HOMEPAGE =		https://bitbucket.org/micktwomey/pyiso8601

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

do-test:
	cd ${WRKSRC}; LC_ALL=C \
	    PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    py.test${MODPY_BIN_SUFFIX} --verbose iso8601

.include <bsd.port.mk>
