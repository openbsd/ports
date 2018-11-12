# $OpenBSD: Makefile,v 1.21 2018/11/12 12:14:29 danj Exp $

COMMENT=		implements an XML/HTML/XHTML markup safe string

MODPY_EGG_VERSION=	1.1.0
DISTNAME=		MarkupSafe-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		textproc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

WANTLIB+=		${MODPY_WANTLIB} pthread

MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS = 		devel/py-test${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
