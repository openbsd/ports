# $OpenBSD: Makefile,v 1.7 2019/07/12 20:51:01 sthen Exp $

COMMENT =		HTTP request and response service

MODPY_EGG_VERSION =	0.5.0
DISTNAME =		httpbin-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		www

HOMEPAGE =		https://github.com/Runscope/httpbin

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-decorator${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			textproc/py-MarkupSafe${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR} \
			www/py-itsdangerous${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
