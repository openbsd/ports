# $OpenBSD: Makefile,v 1.11 2021/11/02 00:02:41 sthen Exp $

COMMENT =		parse semi-structured text into Python table

MODPY_EGG_VERSION =	1.1.2
DISTNAME =		textfsm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/google/textfsm

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
