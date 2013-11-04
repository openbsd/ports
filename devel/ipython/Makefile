# $OpenBSD: Makefile,v 1.24 2013/11/04 11:31:12 edd Exp $

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION =	1.1.0
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://ipython.org/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

MODULES=		lang/python

# py-qt4 as a "soft" dependency for qtconsole.
# sympy is also optional.
# There are a bunch of other event loops which are used in rare cases.
# These can be soft dependencies too.
RUN_DEPENDS =		devel/desktop-file-utils \
			net/py-zmq \
			graphics/py-matplotlib>=1.2.0 \
			textproc/py-pygments \
			www/py-tornado \
			www/py-jinja2
TEST_DEPENDS =		devel/py-nose
BUILD_DEPENDS =		textproc/py-sphinx \
			graphics/py-matplotlib>=1.2.0 \
			net/py-zmq \
			math/graphviz

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=i/ipython/}

pre-patch:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

# Build some HTML docs. OK to ignore python and systrace warnings.
MAKE_ENV +=	PYTHONPATH=${WRKSRC}
post-build:
	cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

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

	cp -r ${WRKSRC}/examples/* ${EXAMPLES_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLES_DIR}/*
	${INSTALL_DATA} ${WRKSRC}/docs/emacs/ipython.el ${EXAMPLES_DIR}
	mv ${EXAMPLES_DIR}/core/*.desktop ${APPS_DIR}

	cp -r ${WRKSRC}/docs/build/html ${DOCS_DIR}/html
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCS_DIR}

	# empty dir i dont want in the PLIST
	rmdir ${DOCS_DIR}/extensions

pre-build:
	${SUBST_CMD} ${WRKBUILD}/IPython/core/tests/test_interactiveshell.py

# Oddly enough, Ipython installs the test suite, so we can run it right out
# of ${LOCALBASE}.
TEST_DEPENDS =	${FULLPKGNAME}:devel/ipython
do-test:
	PYTHONIOENCODING='utf-8' ${LOCALBASE}/bin/iptest -vvs

.include <bsd.port.mk>
