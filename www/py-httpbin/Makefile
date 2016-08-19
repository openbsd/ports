# $OpenBSD: Makefile,v 1.3 2016/08/19 07:39:05 shadchin Exp $

COMMENT =		HTTP request and response service

MODPY_EGG_VERSION =	0.5.0
DISTNAME =		httpbin-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/Runscope/httpbin

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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
