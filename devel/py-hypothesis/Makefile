# $OpenBSD: Makefile,v 1.22 2020/07/03 21:12:45 sthen Exp $

COMMENT =		library for property based testing

MODPY_EGG_VERSION =	4.15.0
DISTNAME =		hypothesis-${MODPY_EGG_VERSION}
PKGNAME =		py-hypothesis-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		2

HOMEPAGE =		https://hypothesis.works/

# MPL 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR}

# Primary author is completely uninterested in supplying tests via PyPI
NO_TEST =		Yes

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-enum34
.endif

.include <bsd.port.mk>
