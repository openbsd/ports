# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:56 sthen Exp $

COMMENT =		libraries for WSGI development

MODPY_EGG_VERSION =	0.7
DISTNAME =		WSGIUtils-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		6

CATEGORIES =		devel textproc www

HOMEPAGE =		http://www.owlfish.com/software/wsgiutils/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://www.owlfish.com/software/wsgiutils/downloads/

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	rm -fr ${WRKSRC}/lib/WSGIUtils.egg-info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-wsgiutils
	cd ${WRKSRC}/documentation && \
	    pax -rw * ${PREFIX}/share/doc/py-wsgiutils/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-wsgiutils
	${INSTALL_DATA} ${WRKSRC}/examples/* \
	    ${PREFIX}/share/examples/py-wsgiutils/

do-test:
	cd ${WRKSRC}/tests && touch __init__.py \
	    CookieTests/__init__.py RequestObjectTests/__init__.py
	cd ${WRKSRC} && ${MODPY_BIN} runtests.py

.include <bsd.port.mk>
