# $OpenBSD: Makefile,v 1.13 2014/09/03 13:43:16 dcoppa Exp $

COMMENT =		python documentation generator

MODPY_EGG_VERSION =	1.1.3
DISTNAME =		Sphinx-${MODPY_EGG_VERSION}
PKGNAME =		py-sphinx-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		http://sphinx.pocoo.org/

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=S/Sphinx/}

MODULES =		lang/python
RUN_DEPENDS =		devel/py-babel \
			textproc/py-docutils \
			textproc/py-pygments \
			www/py-jinja2
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		devel/py-nose \
			print/texlive/texmf,-full

MODPY_SETUPTOOLS =	Yes

post-build:
	@cd ${WRKSRC}/doc && \
		perl -pi -e 's|^(SPHINXBUILD.*) python |\1 ${MODPY_BIN} |' \
			Makefile && \
		${SETENV} ${MAKE_ENV} ${MAKE} text

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sphinx
	cd ${WRKSRC}/doc/_build/text && pax -rw * ${PREFIX}/share/doc/py-sphinx/

do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} run.py

.include <bsd.port.mk>
