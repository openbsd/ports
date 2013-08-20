# $OpenBSD: Makefile,v 1.22 2013/08/20 22:05:50 zhuk Exp $

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION=	0.13.2
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel
REVISION=		0

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
			www/py-tornado
TEST_DEPENDS =		devel/py-nose
BUILD_DEPENDS =		textproc/py-sphinx \
			graphics/py-matplotlib>=1.2.0 \
			net/py-zmq \
			math/graphviz

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=i/ipython/}

USE_GROFF =	Yes

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
	# desktop files
	${INSTALL_DATA_DIR} ${APPS_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/examples/core/*.desktop ${APPS_DIR}
	# emacs stuff
	${INSTALL_DATA} ${WRKSRC}/docs/emacs/ipython.el ${EXAMPLES_DIR}
	# html docs
	cp -r ${WRKSRC}/docs/build/html ${DOCS_DIR}/html
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCS_DIR}
	# empty dir i dont want in the PLIST
	rmdir ${DOCS_DIR}/extensions

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ${MODPY_SETUP} check

.include <bsd.port.mk>
