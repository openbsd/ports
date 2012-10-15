# $OpenBSD: Makefile,v 1.2 2012/10/15 15:06:42 sthen Exp $

COMMENT =		date computations with months

MODPY_EGG_VERSION =	0.9.1
DISTNAME =		MonthDelta-${MODPY_EGG_VERSION}
PKGNAME =		py-monthdelta-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://packages.python.org/MonthDelta

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# PSF
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=M/MonthDelta/}

MODULES =		lang/python

NO_REGRESS =		Yes

.include <bsd.port.mk>
