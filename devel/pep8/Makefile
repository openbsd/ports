# $OpenBSD: Makefile,v 1.1.1.1 2011/08/18 14:58:21 mpi Exp $

COMMENT =		python style guide checker

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		pep8-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://github.com/jcrocholl/pep8

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# Expat
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pep8/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
NO_REGRESS =		Yes

.include <bsd.port.mk>
