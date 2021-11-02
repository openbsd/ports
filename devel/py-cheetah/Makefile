# $OpenBSD: Makefile,v 1.38 2021/11/02 00:00:27 sthen Exp $

COMMENT=		Python-powered template engine and code generator

MODPY_EGG_VERSION=	3.1.0
DISTNAME=		Cheetah3-${MODPY_EGG_VERSION}
PKGNAME=		py-cheetah-${MODPY_EGG_VERSION}
CATEGORIES=		devel textproc
REVISION=		7

HOMEPAGE=		http://www.cheetahtemplate.org/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODULES=		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=		${FULLPKGNAME}:${BUILD_PKGPATH} \
			textproc/py-markdown${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}

MAKE_ENV+=		CHEETAH_USE_SETUPTOOLS=1

FLAVORS=		python3
FLAVOR=			python3

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} Cheetah/Tests/Test.py

.include <bsd.port.mk>
