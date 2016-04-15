# $OpenBSD: Makefile,v 1.38 2016/04/15 08:53:49 shadchin Exp $

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION =	4.0.0
REVISION =		1
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://ipython.org/

MAINTAINER=		Edd Barrett <edd@openbsd.org>

MODULES=		lang/python

RUN_DEPENDS +=		devel/py-decorator \
			databases/py-pickleshare \
			devel/py-simplegeneric \
			devel/py-traitlets \
			devel/desktop-file-utils \
			devel/py-pexpect
# Note that if you have pdb++ installed, tests will fail.
TEST_DEPENDS =		${FULLPKGNAME}:devel/ipython \
			devel/py-nose \
			devel/py-mock \
			www/py-requests \
			devel/py-testpath
BUILD_DEPENDS =		${RUN_DEPENDS} \
			textproc/py-sphinx \
			textproc/py-numpydoc \
			devel/py-ipykernel \
			graphics/py-matplotlib

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

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
EXAMPLES_DIR =	${PREFIX}/share/examples/ipython/

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
	env LC_CTYPE='en_US.UTF-8' PYTHONIOENCODING='utf-8' \
		${LOCALBASE}/bin/iptest

.include <bsd.port.mk>
