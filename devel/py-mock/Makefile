# $OpenBSD: Makefile,v 1.9 2016/06/14 18:49:04 danj Exp $

COMMENT=		python mocking and patching library for testing

MODPY_EGG_VERSION=	1.3.0
DISTNAME=		mock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		http://www.voidspace.org.uk/python/mock/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
BUILD_DEPENDS=		devel/py-pbr${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR} \
			devel/py-pbr${MODPY_FLAVOR}
TEST_DEPENDS=		${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS=	Yes

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-funcsigs
.endif

post-patch:
	cd ${WRKSRC}/mock/tests && perl -i -pe 's/unittest2/unittest/g' *.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
