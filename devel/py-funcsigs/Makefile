# $OpenBSD: Makefile,v 1.6 2019/05/13 18:06:43 danj Exp $

COMMENT=		Python function signatures from PEP362 for 2.6, 2.7, 3.2+

MODPY_EGG_VERSION=	1.0.2
DISTNAME=		funcsigs-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		2

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

pre-test:
	cd ${WRKSRC}/tests && perl -i -pe 's/unittest2/unittest/g' *.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
