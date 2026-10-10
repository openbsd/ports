COMMENT=	DNS toolkit for Python

# see net/py2-dnspython for py2 version
MODPY_DISTV=	2.9.0
DISTNAME=	dnspython-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	net

# https://github.com/rthalley/dnspython
HOMEPAGE=	https://www.dnspython.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

# really wants uv-build, but that restricts archs (quite a few ports,
# including samba, depend on this) - see pyproject.toml patch
# https://github.com/rthalley/dnspython/commit/78792389627cf9bbd41022b92f600be38626d355
MODPY_PYBUILD=	hatchling

# also www/py-httpx2 www/py-httpcore2 when ported (+py-h2)
TEST_DEPENDS=	devel/py-trio>=0.34.0 \
		net/py-idna>=3.20 \
		security/py-cryptography \
		security/py-ecdsa \
		www/py-aioquic

.include <bsd.port.mk>
