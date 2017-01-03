# $OpenBSD: Makefile,v 1.5 2017/01/03 19:19:48 landry Exp $

COMMENT =		library for property based testing

MODPY_EGG_VERSION =	3.6.1
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

NO_TEST =		Yes

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-enum34
.endif

.include <bsd.port.mk>
