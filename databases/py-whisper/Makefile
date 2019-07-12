# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:01 sthen Exp $

COMMENT=		fixed size round-robin style database

MODPY_EGG_VERSION=	1.0.2

DISTNAME=		whisper-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		databases

# Apache
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes

RUN_DEPENDS=		net/rrdtool,-python

NO_TEST =		Yes

.include <bsd.port.mk>
