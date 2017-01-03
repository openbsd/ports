# $OpenBSD: Makefile,v 1.6 2017/01/03 19:19:48 landry Exp $

COMMENT =		common base representation of Python source code

MODPY_EGG_VERSION =	1.4.9
DISTNAME =		astroid-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		http://www.astroid.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-lazy-object-proxy${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-wrapt${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && \
	    ${MODPY_BIN} -m unittest discover -p "unittest*.py" -v

.include <bsd.port.mk>
