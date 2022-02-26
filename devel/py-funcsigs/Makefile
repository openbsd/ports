# $OpenBSD: Makefile,v 1.11 2022/02/26 22:18:11 sthen Exp $

COMMENT=		Python function signatures from PEP362 for 2.6, 2.7, 3.2+

MODPY_EGG_VERSION=	1.0.2
DISTNAME=		funcsigs-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		4

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

pre-test:
	cd ${WRKSRC}/tests && perl -i -pe 's/unittest2/unittest/g' *.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
