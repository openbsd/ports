COMMENT=		DNS toolkit for Python

# dnspython>=2 is py3-only; some deps are hard to update:
# mail/mailman net/samba textproc/calibre
MODPY_EGG_VERSION=	1.16.0
REVISION=		6
DISTNAME=		dnspython-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net

HOMEPAGE=		https://www.dnspython.org/

# BSD
PERMIT_PACKAGE=		Yes

MASTER_SITES=		${HOMEPAGE}kits/${MODPY_EGG_VERSION}/

MODULES=		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS=	Yes
MODPY_ADJ_FILES=	examples/*.py
MODPY_PYTEST=		Yes

TEST_DEPENDS=		security/py-ecdsa \
			devel/py-typing

TEST_ENV+=		PYTHONPATH="${WRKSRC}"

.include <bsd.port.mk>
