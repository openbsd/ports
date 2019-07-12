# $OpenBSD: Makefile,v 1.14 2019/07/12 20:45:50 sthen Exp $

COMMENT=		python mocking and patching library for testing

MODPY_EGG_VERSION=	2.0.0
DISTNAME=		mock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		http://www.voidspace.org.uk/python/mock/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
BUILD_DEPENDS=		devel/py-pbr${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR} \
			devel/py-pbr${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-funcsigs
.endif

post-patch:
	cd ${WRKSRC}/mock/tests && perl -i -pe 's/unittest2/unittest/g' *.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
