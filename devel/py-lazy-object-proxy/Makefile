# $OpenBSD: Makefile,v 1.3 2017/05/11 18:45:11 shadchin Exp $

COMMENT =		fast and thorough lazy object proxy

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		lazy-object-proxy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://python-lazy-object-proxy.readthedocs.org

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

WANTLIB += pthread ${MODPY_WANTLIB}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	@cd ${WRKSRC} && LC_CTYPE=C.UTF-8 ${MODPY_BIN} -m pytest --ignore=src

.include <bsd.port.mk>
