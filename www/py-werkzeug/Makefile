# $OpenBSD: Makefile,v 1.13 2013/05/02 20:08:15 fgsch Exp $

COMMENT =		WSGI utility collection

MODPY_EGG_VERSION =	0.8.3
DISTNAME =		Werkzeug-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		1

CATEGORIES =		www devel

HOMEPAGE =		http://werkzeug.pocoo.org/

MASTER_SITES =		${MASTER_SITE_PYPI:=W/Werkzeug/}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		textproc/py-sphinx

PKG_ARCH =		*

post-build:
	@cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}werkzeug
	cd ${WRKSRC}/docs/_build/html && \
	    pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}werkzeug
	rm -rf ${PREFIX}/share/doc/${MODPY_PY_PREFIX}werkzeug/_sources

.include <bsd.port.mk>
