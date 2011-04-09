# $OpenBSD: Makefile,v 1.6 2011/04/09 14:24:27 benoit Exp $

COMMENT =		python documentation generator

MODPY_EGG_VERSION =	1.0.7
DISTNAME =		Sphinx-${MODPY_EGG_VERSION}
PKGNAME =		py-sphinx-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

HOMEPAGE =		http://sphinx.pocoo.org/

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=S/Sphinx/}

MODULES =		lang/python
RUN_DEPENDS =		devel/py-babel \
			textproc/py-docutils \
			textproc/py-pygments \
			www/py-jinja2 \
			${MODPY_JSON}
BUILD_DEPENDS =		${RUN_DEPENDS}
REGRESS_DEPENDS =	devel/py-nose

MODPY_SETUPTOOLS =	Yes

post-build:
	@cd ${WRKSRC}/doc && \
		perl -pi -e 's|^(SPHINXBUILD.*) python |\1 ${MODPY_BIN} |' \
			Makefile && \
		${SETENV} ${MAKE_ENV} ${MAKE} text

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sphinx
	cd ${WRKSRC}/doc/_build/text && pax -rw * ${PREFIX}/share/doc/py-sphinx/

do-regress:
	cd ${WRKSRC}/tests && ${MODPY_BIN} run.py

.include <bsd.port.mk>
