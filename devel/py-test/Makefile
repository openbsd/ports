# $OpenBSD: Makefile,v 1.30 2018/04/28 10:47:05 pvk Exp $

COMMENT=		cross-project testing tool for Python

MODPY_EGG_VERSION=	3.5.0
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

RUN_DEPENDS=		devel/py-attrs${MODPY_FLAVOR}>=17.4.0 \
			devel/py-more-itertools${MODPY_FLAVOR} \
			devel/py-pluggy${MODPY_FLAVOR}>=0.6 \
			devel/py-py${MODPY_FLAVOR}>=1.5.0 \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}>=1.10.0
.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-funcsigs
.endif

TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			shells/bash \
			www/py-requests${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/py.test{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
