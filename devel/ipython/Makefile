COMMENT =		enhanced interactive Python shell

MODPY_DISTV =	8.28.0
DISTNAME =		ipython-${MODPY_DISTV}
PKGNAME =		ipython${MODPY_MAJOR_VERSION}-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# XXX: pickleshare is optional as of 8.17, but keep as RDEP for now.
# If pickleshare is ever removed as an RDEP, it needs to become a TDEP
RUN_DEPENDS =		databases/py-pickleshare \
			devel/desktop-file-utils \
			devel/py-decorator \
			devel/py-exceptiongroup \
			devel/py-jedi>=0.16 \
			devel/py-pexpect>=4.3 \
			devel/py-prompt_toolkit>=3.0.41v1,<3.1.0v1 \
			devel/py-stack_data \
			devel/py-traitlets>=5.13.0 \
			devel/py-typing-extensions \
			graphics/py-matplotlib-inline \
			textproc/py-pygments>=2.4.0

# Note that if you have pdb++ installed, tests will fail.
TEST_DEPENDS =		devel/py-ipykernel \
			devel/py-curio \
			devel/py-nbformat \
			devel/py-testpath \
			devel/py-test-asyncio<0.22 \
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
	${SUBST_CMD} ${WRKBUILD}/IPython/core/tests/test_interactiveshell.py
	${SUBST_CMD} ${WRKBUILD}/examples/IPython\ Kernel/ipython.desktop

.include <bsd.port.mk>
