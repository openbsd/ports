COMMENT=	enhanced interactive Python shell

MODPY_DISTV=	9.19.1
DISTNAME=	ipython-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://ipython.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-ipython_pygments_lexers \
		devel/py-jedi \
		graphics/py-matplotlib-inline \
		devel/py-pexpect \
		devel/py-prompt_toolkit<3.1.0v1 \
		sysutils/py-psutil \
		textproc/py-pygments \
		devel/py-stack_data \
		devel/py-traitlets \
		devel/desktop-file-utils

# Note that if you have pdb++ installed, tests will fail.
# Could benefit from having jupyter_ai
TEST_DEPENDS=	devel/py-ipykernel \
		devel/py-curio \
		devel/py-nbformat \
		devel/py-testpath \
		devel/py-test-asyncio \
		devel/py-trio \
		graphics/py-matplotlib \
		math/py-numpy \
		math/py-pandas

PORTHOME=	${WRKDIR}

# Despite the fact that setupbase.py defines paths for examples to
# be installed into, we still have to do it manually for some reason.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${WRKSRC}/examples/IPython\ Kernel/ipython.desktop
	mv ${WRKSRC}/examples/IPython\ Kernel/ipython.desktop \
		${PREFIX}/share/applications/ipython.desktop

pre-build:
	${SUBST_CMD} ${WRKBUILD}/tests/test_interactiveshell.py
	${SUBST_CMD} ${WRKBUILD}/examples/IPython\ Kernel/ipython.desktop

.include <bsd.port.mk>
