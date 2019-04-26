# $OpenBSD: Makefile,v 1.1.1.1 2019/04/26 18:25:54 kmos Exp $

COMMENT =		emoji for Python

MODPY_EGG_VERSION =	0.5.2
DISTNAME =		emoji-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/carpedm20/emoji/

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
