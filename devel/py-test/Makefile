# $OpenBSD: Makefile,v 1.7 2014/06/03 11:34:24 rpointel Exp $

COMMENT=		cross-project testing tool for Python

MODPY_EGG_VERSION=	2.3.5
DISTNAME=		pytest-${MODPY_EGG_VERSION}
PKGNAME=		py-test-${MODPY_EGG_VERSION}

REVISION = 0

CATEGORIES=		devel

HOMEPAGE=		http://pytest.org/latest/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/pytest/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

RUN_DEPENDS=		devel/py-py${MODPY_FLAVOR}
TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}>=${MODPY_EGG_VERSION} \
			devel/py-nose${MODPY_FLAVOR}

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/py.test ${PREFIX}/bin/py.test${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
