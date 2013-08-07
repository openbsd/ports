# $OpenBSD: Makefile,v 1.5 2013/08/07 21:57:48 naddy Exp $

COMMENT =		python style guide checker

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		pep8-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jcrocholl/pep8

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# Expat
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pep8/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

.include <bsd.port.mk>
