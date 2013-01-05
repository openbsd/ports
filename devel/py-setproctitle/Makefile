# $OpenBSD: Makefile,v 1.3 2013/01/05 15:18:54 benoit Exp $

COMMENT =		library for getting/setting process names

MODPY_EGG_VERSION =	1.1.6
DISTNAME =		setproctitle-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://code.google.com/p/py-setproctitle/

# BSD 3-clause 
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=s/setproctitle/}

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

WANTLIB +=		${MODPY_WANTLIB}

BUILD_DIR =		build/lib.${MODPY_VERSION}
MODPY_DISTUTILS_BUILDARGS = --build-lib ${BUILD_DIR}

REGRESS_DEPENDS =	devel/gmake

MAKE_ENV +=		PYTHON="${MODPY_BIN}" PYCONFIG="${MODPY_BIN}-config" \
			PY2TO3="2to3-${MODPY_VERSION}"

do-regress:
	cd ${WRKSRC} && gmake ${MAKE_ENV} check

.include <bsd.port.mk>
