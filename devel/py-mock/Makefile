# $OpenBSD: Makefile,v 1.11 2017/01/03 19:19:48 landry Exp $

COMMENT=		python mocking and patching library for testing

MODPY_EGG_VERSION=	2.0.0
DISTNAME=		mock-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		0

HOMEPAGE=		http://www.voidspace.org.uk/python/mock/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
BUILD_DEPENDS=		devel/py-pbr${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR} \
			devel/py-pbr${MODPY_FLAVOR}
TEST_DEPENDS=		${RUN_DEPENDS}

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
