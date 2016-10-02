# $OpenBSD: Makefile,v 1.1.1.1 2016/10/02 11:45:49 shadchin Exp $

COMMENT =		library for property based testing

MODPY_EGG_VERSION =	3.5.2
DISTNAME =		hypothesis-${MODPY_EGG_VERSION}
PKGNAME =		py-hypothesis-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		http://hypothesis.works/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-uncompyle6${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-enum34
.endif

.include <bsd.port.mk>
