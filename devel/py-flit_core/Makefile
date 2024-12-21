COMMENT=	distribution-building parts of Flit

MODPY_DISTV=	3.10.1

DISTNAME=	flit_core-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/pypa/flit
HOMEPAGE=	https://flit.pypa.io/

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PI=	Yes

MODPY_PYTEST=	Yes

# This port must have minimal deps. In particular it cannot have
# a bdep on itself :) The do-build target uses flit_core.wheel
# from flit_core distribution and must still work if flit_core is
# not installed at build time.
#
# Notes in  https://github.com/pypa/flit/blob/main/doc/bootstrap.rst

TEST_DEPENDS=	devel/py-testpath

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	cd ${WRKSRC}; ${MODPY_BIN} bootstrap_install.py \
	    --installdir ${WRKINST}${MODPY_SITEPKG} dist/*.whl
	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}

.include <bsd.port.mk>
