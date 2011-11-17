# $OpenBSD: Makefile,v 1.1.1.1 2011/11/17 17:12:11 kili Exp $

COMMENT =		guppy programming environment

MODPY_EGG_VERSION =	0.1.9
DISTNAME =		guppy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://guppy-pe.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_PYPI:=g/guppy/}

MODULES =		lang/python

REGRESS_DEPENDS =	${BASE_PKGPATH}

do-regress:
	@${MODPY_BIN} -c 'from guppy import hpy; hpy().test()'

.include <bsd.port.mk>
