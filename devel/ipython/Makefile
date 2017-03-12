# $OpenBSD: Makefile,v 1.43 2017/03/12 21:11:51 naddy Exp $

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION =	5.1.0
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://ipython.org/

MAINTAINER=		Edd Barrett <edd@openbsd.org>

MODULES=		lang/python

RUN_DEPENDS =		devel/py-decorator${MODPY_FLAVOR} \
			databases/py-pickleshare${MODPY_FLAVOR} \
			devel/py-simplegeneric${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR} \
			devel/desktop-file-utils \
			devel/py-pexpect${MODPY_FLAVOR} \
			devel/py-prompt_toolkit${MODPY_FLAVOR}
# Note that if you have pdb++ installed, tests will fail.
TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-path.py${MODPY_FLAVOR} \
			devel/py-nbformat${MODPY_FLAVOR}>=4.2.0 \
			devel/py-nose${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			devel/py-testpath${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS} \
			textproc/py-sphinx${MODPY_FLAVOR} \
			textproc/py-numpydoc${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR}>=4.5.2 \
			devel/py-nose${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}
# Optional dependency which gets picked up if it happens to be installed, thus
# causing race conditions under dpb. Pull it in to avoid this possibility.
BUILD_DEPENDS +=	www/py-mako${MODPY_FLAVOR}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

PORTHOME =		${WRKSRC}

.if ${FLAVOR:Mpython3}
PKGNAME =		ipython${MODPY_MAJOR_VERSION}-${MODPY_EGG_VERSION}
.else
RUN_DEPENDS +=		devel/py-backports-shutil-get-terminal-size
TEST_DEPENDS +=		devel/py-mock
.endif
REVISION =		0

pre-patch:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

# Build some HTML docs. OK to ignore python and systrace warnings.
MAKE_ENV +=	PYTHONPATH=${WRKSRC}
post-build:
	cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html \
		SPHINXBUILD=${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX}

# Despite the fact that setupbase.py defines paths for examples to
# be installed into, we still have to do it manually for some reason.
APPS_DIR = 	${PREFIX}/share/applications/
DOCS_DIR =	${PREFIX}/share/doc/ipython${MODPY_BIN_SUFFIX}/
EXAMPLES_DIR =	${PREFIX}/share/examples/ipython${MODPY_BIN_SUFFIX}/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA_DIR} ${APPS_DIR}
	${INSTALL_DATA_DIR} ${DOCS_DIR}

	rm ${WRKSRC}/examples/IPython\ Kernel/ipython.desktop.beforesubst
	rm ${WRKSRC}/examples/IPython\ Kernel/ipython.desktop.orig
	cp -r ${WRKSRC}/examples/* ${EXAMPLES_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLES_DIR}/*
	mv ${EXAMPLES_DIR}/IPython\ Kernel/ipython.desktop \
		${APPS_DIR}/ipython${MODPY_BIN_SUFFIX}.desktop

	cp -r ${WRKSRC}/docs/build/html ${DOCS_DIR}/html
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCS_DIR}

	mv ${PREFIX}/bin/ipython ${PREFIX}/bin/ipython${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/bin/iptest ${PREFIX}/bin/iptest${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/man/man1/ipython.1 ${PREFIX}/man/man1/ipython${MODPY_BIN_SUFFIX}.1

pre-build:
	${SUBST_CMD} ${WRKBUILD}/IPython/core/tests/test_interactiveshell.py
	${SUBST_CMD} ${WRKBUILD}/examples/IPython\ Kernel/ipython.desktop

do-test:
	env LC_CTYPE='en_US.UTF-8' PYTHONIOENCODING='utf-8' \
		${LOCALBASE}/bin/iptest${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
