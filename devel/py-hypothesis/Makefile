# $OpenBSD: Makefile,v 1.17 2019/04/28 20:51:33 sthen Exp $

COMMENT =		library for property based testing

MODPY_EGG_VERSION =	3.55.1
DISTNAME =		hypothesis-${MODPY_EGG_VERSION}
PKGNAME =		py-hypothesis-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		http://hypothesis.works/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR}

NO_TEST =		Yes

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-enum34
.endif

.include <bsd.port.mk>
