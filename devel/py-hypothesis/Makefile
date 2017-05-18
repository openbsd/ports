# $OpenBSD: Makefile,v 1.10 2017/05/18 15:12:56 shadchin Exp $

COMMENT =		library for property based testing

MODPY_EGG_VERSION =	3.8.5
DISTNAME =		hypothesis-${MODPY_EGG_VERSION}
PKGNAME =		py-hypothesis-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		http://hypothesis.works/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-enum34
.endif

.include <bsd.port.mk>
