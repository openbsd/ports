# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:25 espie Exp $

COMMENT =		guppy programming environment

MODPY_EGG_VERSION =	0.1.9
DISTNAME =		guppy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://guppy-pe.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_PYPI:=g/guppy/}

MODULES =		lang/python

TEST_DEPENDS =	${BASE_PKGPATH}

do-test:
	@${MODPY_BIN} -c 'from guppy import hpy; hpy().test()'

.include <bsd.port.mk>
