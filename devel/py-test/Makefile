# $OpenBSD: Makefile,v 1.28 2017/05/25 08:54:31 sthen Exp $

COMMENT=		cross-project testing tool for Python

MODPY_EGG_VERSION=	3.1.0
DISTNAME=		pytest-${MODPY_EGG_VERSION}
PKGNAME=		py-test-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		http://pytest.org/latest/

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

BUILD_DEPENDS=		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-py${MODPY_FLAVOR}>=1.4.30
TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-twisted
.endif

post-install:
	mv ${PREFIX}/bin/py.test{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
