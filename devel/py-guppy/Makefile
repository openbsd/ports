# $OpenBSD: Makefile,v 1.4 2015/04/21 18:33:48 sthen Exp $

COMMENT =		guppy programming environment

MODPY_EGG_VERSION =	0.1.9
DISTNAME =		guppy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://guppy-pe.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODPY_PI =		Yes

MODULES =		lang/python

TEST_DEPENDS =	${BASE_PKGPATH}

do-test:
	@${MODPY_BIN} -c 'from guppy import hpy; hpy().test()'

.include <bsd.port.mk>
