# $OpenBSD: Makefile,v 1.1.1.1 2016/11/02 18:27:33 shadchin Exp $

COMMENT =		discover and load entry points from installed packages

MODPY_EGG_VERSION =	0.2.2
PKGNAME =		py-entrypoints-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/takluyver/entrypoints

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

GH_ACCOUNT =		takluyver
GH_PROJECT =		entrypoints
GH_TAGNAME =		${MODPY_EGG_VERSION}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-configparser
.endif

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
