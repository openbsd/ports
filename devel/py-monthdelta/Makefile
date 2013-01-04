# $OpenBSD: Makefile,v 1.3 2013/01/04 13:56:21 benoit Exp $

COMMENT =		date computations with months

MODPY_EGG_VERSION =	1.0b
DISTNAME =		MonthDelta-${MODPY_EGG_VERSION}
PKGNAME =		py-monthdelta-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://packages.python.org/MonthDelta

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=M/MonthDelta/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

NO_REGRESS =		Yes

.include <bsd.port.mk>
