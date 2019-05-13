# $OpenBSD: Makefile,v 1.19 2019/05/13 18:06:43 danj Exp $

COMMENT =		library for property based testing

MODPY_EGG_VERSION =	4.15.0
DISTNAME =		hypothesis-${MODPY_EGG_VERSION}
PKGNAME =		py-hypothesis-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://hypothesis.works/

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

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
