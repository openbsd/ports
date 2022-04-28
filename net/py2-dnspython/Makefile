COMMENT=		DNS toolkit for Python

# dnspython>=2 is py3-only; this old version is kept around for
# python 2 until mail/mailman can be updated
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

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
MODPY_SETUPTOOLS=	Yes
MODPY_ADJ_FILES=	examples/*.py
NO_TEST=		Yes

.include <bsd.port.mk>
