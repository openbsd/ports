# $OpenBSD: Makefile,v 1.14 2014/09/20 20:30:09 sthen Exp $

COMMENT =		python documentation generator

MODPY_EGG_VERSION =	1.2.3
DISTNAME =		Sphinx-${MODPY_EGG_VERSION}
PKGNAME =		py-sphinx-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

HOMEPAGE =		http://sphinx.pocoo.org/

MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=S/Sphinx/}

MODULES =		lang/python
LIB_DEPENDS =		devel/py-babel \
			textproc/py-docutils \
			textproc/py-pygments \
			www/py-jinja2
TEST_DEPENDS =		devel/py-mock \
			devel/py-nose \
			print/texlive/texmf,-full

MODPY_SETUPTOOLS =	Yes

post-build:
	cd ${WRKSRC} && ${MAKE_ENV} PYTHONPATH=${WRKSRC} \
		${MODPY_BIN} sphinx-build.py doc doc/_build/html

DOCS =		${PREFIX}/share/doc/py-sphinx

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${WRKSRC}/doc/_build/html && pax -rw * ${DOCS}

do-test: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} nosetests

.include <bsd.port.mk>
