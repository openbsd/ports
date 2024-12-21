COMMENT=	async I/O extension for pyserial

MODPY_DISTV=	0.6
DISTNAME=	pyserial-asyncio-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	0

CATEGORIES=	comms

# https://github.com/pyserial/pyserial-asyncio
HOMEPAGE=	http://pyserial-asyncio.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-serial

.include <bsd.port.mk>
