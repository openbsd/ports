# $OpenBSD: Makefile,v 1.1.1.1 2011/08/18 12:22:31 mpi Exp $

COMMENT =		passive checker of Python programs

MODPY_EGG_VERSION =	0.4.0
DISTNAME =		pyflakes-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://www.divmod.org/trac/wiki/DivmodPyflakes

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# MIT 
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pyflakes/}

MODULES =		lang/python

NO_REGRESS =		Yes

.include <bsd.port.mk>
