# $OpenBSD: Makefile,v 1.12 2013/03/10 10:59:42 fgsch Exp $

COMMENT =		WSGI utility collection

MODPY_EGG_VERSION =	0.8.3
DISTNAME =		Werkzeug-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

CATEGORIES =		www devel

HOMEPAGE =		http://werkzeug.pocoo.org/

MASTER_SITES =		${MASTER_SITE_PYPI:=W/Werkzeug/}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
PKG_ARCH =		*

BUILD_DEPENDS =		textproc/py-sphinx

post-build:
	cd ${WRKSRC}/docs && $(MAKE_PROGRAM) html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}werkzeug
	cd ${WRKSRC}/docs/_build/html && \
	    pax -rw _images _static contrib deployment *.{inv,js,html} \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}werkzeug

.include <bsd.port.mk>
