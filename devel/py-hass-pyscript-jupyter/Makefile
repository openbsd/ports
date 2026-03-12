COMMENT=	shim connecting Jupyter to a HomeAssistant Pyscript kernel

MODPY_DISTV=	1.0.0
GH_ACCOUNT=	craigbarratt
GH_PROJECT=	hass-pyscript-jupyter
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-hass-pyscript-jupyter-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/craigbarratt/hass-pyscript-jupyter

# BSD
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-jupyter_client \
		devel/py-jupyter_core \
		www/py-aiohttp
# patched so that py-aiohttp_socks (not ported) is not a hard dep

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/jupyter/kernels/pyscript/
	${INSTALL_DATA} ${FILESDIR}/kernel.json \
		${PREFIX}/share/jupyter/kernels/pyscript/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hass-pyscript-jupyter/
	${INSTALL_DATA} ${WRKSRC}/{README.md,pyscript_tutorial.ipynb} \
		${PREFIX}/share/doc/hass-pyscript-jupyter/

.include <bsd.port.mk>
