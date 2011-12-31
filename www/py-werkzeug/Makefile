# $OpenBSD: Makefile,v 1.10 2011/12/31 15:06:41 fgsch Exp $

COMMENT =		WSGI utility collection

MODPY_EGG_VERSION =	0.8.2
DISTNAME =		Werkzeug-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www devel

HOMEPAGE =		http://werkzeug.pocoo.org/

MASTER_SITES =		${MASTER_SITE_PYPI:=W/Werkzeug/}

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
PKG_ARCH =		*

BUILD_DEPENDS =		textproc/py-sphinx
REGRESS_DEPENDS =	devel/py-nose \
			textproc/py-lxml

post-build:
	cd ${WRKSRC}/docs && \
	    ${LOCALBASE}/bin/sphinx-build -N -b html . _build/html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-werkzeug
	cd ${WRKSRC}/docs/_build/html && \
	    pax -rw * ${PREFIX}/share/doc/py-werkzeug

.include <bsd.port.mk>
