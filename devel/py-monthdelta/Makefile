# $OpenBSD: Makefile,v 1.6 2015/09/29 09:02:55 edd Exp $

COMMENT =		date computations with months

MODPY_EGG_VERSION =	1.0b0
REVISION =		0
DISTNAME =		MonthDelta-1.0b
PKGNAME =		py-monthdelta-1.0b

CATEGORIES =		devel

HOMEPAGE =		http://packages.python.org/MonthDelta

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/py-setuptools>=18.2v0

NO_TEST =		Yes

.include <bsd.port.mk>
