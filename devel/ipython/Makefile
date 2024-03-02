COMMENT =		enhanced interactive Python shell

MODPY_EGG_VERSION =	8.22.1
DISTNAME =		ipython-${MODPY_EGG_VERSION}
PKGNAME =		ipython${MODPY_MAJOR_VERSION}-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# XXX: pickleshare is optional as of 8.17, but keep as RDEP for now.
# If pickleshare is ever removed as an RDEP, it needs to become a TDEP
RUN_DEPENDS =		databases/py-pickleshare${MODPY_FLAVOR} \
			devel/desktop-file-utils \
			devel/py-decorator${MODPY_FLAVOR} \
			devel/py-exceptiongroup${MODPY_FLAVOR} \
			devel/py-jedi${MODPY_FLAVOR}>=0.16 \
			devel/py-pexpect${MODPY_FLAVOR}>=4.3 \
			devel/py-prompt_toolkit${MODPY_FLAVOR}>=3.0.41v1,<3.1.0v1 \
			devel/py-stack_data${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR}>=5.13.0 \
			graphics/py-matplotlib-inline${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}>=2.4.0

# Note that if you have pdb++ installed, tests will fail.
TEST_DEPENDS =		devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-curio${MODPY_FLAVOR} \
			devel/py-nbformat${MODPY_FLAVOR} \
			devel/py-testpath${MODPY_FLAVOR} \
			devel/py-test-asyncio${MODPY_FLAVOR}<0.22 \
			devel/py-trio${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}>=1.23 \
			math/py-pandas${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}

# Despite the fact that setupbase.py defines paths for examples to
# be installed into, we still have to do it manually for some reason.
APPS_DIR =	${PREFIX}/share/applications/

post-install:
	${INSTALL_DATA_DIR} ${APPS_DIR}

	chown -R ${SHAREOWN}:${SHAREGRP} \
		${WRKSRC}/examples/IPython\ Kernel/ipython.desktop
	mv ${WRKSRC}/examples/IPython\ Kernel/ipython.desktop \
		${APPS_DIR}/ipython.desktop

pre-build:
	${SUBST_CMD} ${WRKBUILD}/IPython/core/tests/test_interactiveshell.py
	${SUBST_CMD} ${WRKBUILD}/examples/IPython\ Kernel/ipython.desktop

.include <bsd.port.mk>
