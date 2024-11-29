COMMENT=	async I/O extension for pyserial

MODPY_EGG_VERSION=	0.6
DISTNAME=	pyserial-asyncio-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}

CATEGORIES=	comms

# https://github.com/pyserial/pyserial-asyncio
HOMEPAGE=	http://pyserial-asyncio.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-serial${MODPY_FLAVOR}

.include <bsd.port.mk>
