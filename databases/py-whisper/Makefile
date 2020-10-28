# $OpenBSD: Makefile,v 1.11 2020/10/28 12:13:06 sthen Exp $

COMMENT=		fixed size round-robin style database

MODPY_EGG_VERSION=	1.0.2
REVISION=		0

DISTNAME=		whisper-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		databases

# Apache
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes

RUN_DEPENDS=		net/py-rrdtool${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
