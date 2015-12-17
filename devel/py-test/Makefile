# $OpenBSD: Makefile,v 1.13 2015/12/17 18:38:20 shadchin Exp $

COMMENT=		cross-project testing tool for Python

MODPY_EGG_VERSION=	2.8.5
DISTNAME=		pytest-${MODPY_EGG_VERSION}
PKGNAME=		py-test-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		http://pytest.org/latest/

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes
EXTRACT_SUFX=		.zip

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

RUN_DEPENDS=		devel/py-py${MODPY_FLAVOR}>=1.4.30
TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock \
			devel/py-twisted/core
.endif

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/py.test ${PREFIX}/bin/py.test${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
