# $OpenBSD: Makefile,v 1.6 2017/05/25 11:45:25 shadchin Exp $

COMMENT =		converting Jupyter notebooks

MODPY_EGG_VERSION =	5.2.1
DISTNAME =		nbconvert-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-entrypoints${MODPY_FLAVOR} \
			devel/py-jupyter_client${MODPY_FLAVOR}>=5.0.0 \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.3.0 \
			devel/py-nbformat${MODPY_FLAVOR}>=4.3.0 \
			devel/py-testpath${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR} \
			textproc/py-mistune${MODPY_FLAVOR} \
			textproc/py-pandocfilters${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR} \
			www/py-bleach${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}>=4.2
TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			${RUN_DEPENDS} \
			devel/ipython${MODPY_FLAVOR}>=5.1.0 \
			devel/py-ipykernel${MODPY_FLAVOR}>=4.5.2 \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/jupyter-nbconvert{,${MODPY_BIN_SUFFIX}}

do-test:
	cd ${WRKSRC} && LC_CTYPE=en_US.UTF-8 ${MODPY_BIN} -m pytest nbconvert

.include <bsd.port.mk>
