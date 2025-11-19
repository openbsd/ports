COMMENT =		enhanced interactive Python shell

MODPY_DISTV =		9.7.0
DISTNAME =		ipython-${MODPY_DISTV}

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-decorator \
			devel/py-jedi>=0.16 \
			devel/py-pexpect>=4.3 \
			devel/py-prompt_toolkit>=3.0.41v1,<3.1.0v1 \
			devel/py-stack_data \
			devel/py-traitlets>=5.13.0 \
			graphics/py-matplotlib-inline \
			textproc/py-ipython_pygments_lexers \
			textproc/py-pygments>=2.4.0

# Note that if you have pdb++ installed, tests will fail.
# Could benefit from having jupyter_ai
TEST_DEPENDS =		devel/py-ipykernel \
			devel/py-curio \
			devel/py-nbformat \
			devel/py-testpath \
			devel/py-test-asyncio \
			devel/py-trio \
			graphics/py-matplotlib \
			math/py-numpy>=1.23 \
			math/py-pandas

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
	${SUBST_CMD} ${WRKBUILD}/tests/test_interactiveshell.py
	${SUBST_CMD} ${WRKBUILD}/examples/IPython\ Kernel/ipython.desktop

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
