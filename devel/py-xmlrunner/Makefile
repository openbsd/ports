# $OpenBSD: Makefile,v 1.1.1.1 2011/12/19 10:39:20 mpi Exp $

COMMENT =		test runner with JUnit like XML reporting

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		unittest-xml-reporting-${MODPY_EGG_VERSION}
PKGNAME =		py-xmlrunner-${MODPY_EGG_VERSION}	

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/unittest-xml-reporting

# LGPL2.1
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=u/unittest-xml-reporting/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
NO_REGRESS =		Yes

.include <bsd.port.mk>
