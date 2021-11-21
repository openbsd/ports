# $OpenBSD: Makefile,v 1.18 2021/11/21 09:06:44 sthen Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION=	3.3.6
DISTNAME=		Markdown-${MODPY_EGG_VERSION}
PKGNAME=		py-markdown-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

TEST_DEPENDS=		${BUILD_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-coverage${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

do-test:
	ln -fs ${LOCALBASE}/bin/coverage3 ${WRKDIR}/bin/coverage
	cd ${WRKSRC}; ${SETENV} ${ALL_TEST_ENV} make test

.include <bsd.port.mk>
