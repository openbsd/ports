# $OpenBSD: Makefile,v 1.4 2017/01/03 19:19:49 landry Exp $

COMMENT=		measures number of terminal column cells of wide-char code

MODPY_EGG_VERSION=	0.1.7
DISTNAME=		wcwidth-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/jquast/wcwidth

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest wcwidth

.include <bsd.port.mk>
