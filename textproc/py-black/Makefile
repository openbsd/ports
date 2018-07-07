# $OpenBSD: Makefile,v 1.1.1.1 2018/07/07 15:17:15 juanfra Exp $

COMMENT =		python code formatter

MODPY_EGG_VERSION =	18.6b4
DISTNAME =		black-${MODPY_EGG_VERSION}
PKGNAME =		py-black-${MODPY_EGG_VERSION:S/b/beta/}

CATEGORIES =		textproc devel

HOMEPAGE =		https://github.com/ambv/black

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-appdirs${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
