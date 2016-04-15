# $OpenBSD: Makefile,v 1.1.1.1 2016/04/15 18:36:59 shadchin Exp $

COMMENT =		fast and thorough lazy object proxy

MODPY_EGG_VERSION =	1.2.2
DISTNAME =		lazy-object-proxy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://python-lazy-object-proxy.readthedocs.org

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

WANTLIB += pthread ${MODPY_WANTLIB}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest --ignore=src

.include <bsd.port.mk>
