# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:11 sthen Exp $

COMMENT =		python code formatter

MODPY_EGG_VERSION =	19.3b0
DISTNAME =		black-${MODPY_EGG_VERSION}
PKGNAME =		py-black-${MODPY_EGG_VERSION:S/b/beta/}
REVISION =		0

CATEGORIES =		textproc devel

MAINTAINER =		Daniel Jakots <obsd@chown.me>

HOMEPAGE =		https://github.com/ambv/black

# MIT
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-appdirs${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

.include <bsd.port.mk>
