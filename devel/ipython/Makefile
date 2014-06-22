# $OpenBSD: Makefile,v 1.28 2014/06/22 19:50:59 edd Exp $

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION =	2.1.0
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://ipython.org/

MAINTAINER=		Edd Barrett <edd@openbsd.org>

MODULES=		lang/python

# py-qt4 as a "soft" run dependency, i.e. ipython will run fine without
# it, but the qtconsole functionality will not be available.
# Sympy is also optional.
# There are a bunch of other event loops which are used in rare cases.
# These can be soft dependencies too.
RUN_DEPENDS =		devel/desktop-file-utils \
			net/py-zmq \
			graphics/py-matplotlib>=1.2.0 \
			textproc/py-pygments \
			www/py-tornado>=3.2 \
			www/py-jinja2
# Oddly enough, Ipython installs the test suite, so we can run it right out
# of ${LOCALBASE}. Note that if you have pdb++ installed, tests will fail.
TEST_DEPENDS =		${FULLPKGNAME}:devel/ipython \
			devel/py-nose \
			devel/py-mock
BUILD_DEPENDS =		textproc/py-sphinx \
			graphics/py-matplotlib>=1.2.0 \
			net/py-zmq \
			math/graphviz \
			textproc/py-numpydoc \
			www/py-tornado>=3.2 \
			x11/py-qt4

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=i/ipython/}

pre-patch:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

# Build some HTML docs. OK to ignore python and systrace warnings.
MAKE_ENV +=	PYTHONPATH=${WRKSRC}
post-build:
	cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html
	${SUBST_CMD} ${WRKBUILD}/IPython/core/tests/test_interactiveshell.py

# Despite the fact that setupbase.py defines paths for examples to
# be installed into, we still have to do it manually for some reason.
APPS_DIR = 	${PREFIX}/share/applications/
DOCS_DIR =	${PREFIX}/share/doc/ipython/
# XXX XXX XXX
# The old ipython-0.11 port installed share/examples/ipython as a regular
# file. This of course was incorrect. Since there is a bug in the package
# tools that prevents files from being replaced by directories during an
# upgrade, we must install the examples elsewhere to avoid the clash.
# Once the pkg tools bug is fixed, we can use the normal examples path
# (currently commented). Also be sure to update the setupbase.py patch.
#EXAMPLES_DIR =	${PREFIX}/share/examples/ipython/
EXAMPLES_DIR =	${PREFIX}/share/examples/ipython-examples/
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA_DIR} ${APPS_DIR}
	${INSTALL_DATA_DIR} ${DOCS_DIR}

	cp -r ${WRKSRC}/examples/* ${EXAMPLES_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLES_DIR}/*
	mv ${EXAMPLES_DIR}/IPython\ Kernel/*.desktop ${APPS_DIR}

	cp -r ${WRKSRC}/docs/build/html ${DOCS_DIR}/html
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCS_DIR}

pre-build:
	${SUBST_CMD} ${WRKBUILD}/IPython/core/tests/test_interactiveshell.py

do-test:
	PYTHONIOENCODING='utf-8' ${LOCALBASE}/bin/iptest

# A test failure, reported upstream:
# https://github.com/ipython/ipython/issues/5217
# To repro:
# python2.7 /usr/local/lib/python2.7/site-packages/IPython/testing/iptest.py -vvs IPython.core

# Note also that tests will fail if pdb++ is installed! Bug raised:
# https://github.com/ipython/ipython/issues/6004

.include <bsd.port.mk>
