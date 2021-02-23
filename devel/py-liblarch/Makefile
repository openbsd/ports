# $OpenBSD: Makefile,v 1.10 2021/02/23 19:39:19 sthen Exp $

COMMENT=		python library to easily handle data structure

GH_ACCOUNT=		getting-things-gnome
GH_PROJECT=		liblarch
GH_TAGNAME=		v3.0
MODPY_EGG_VERSION=	${GH_TAGNAME:S/v//}
DISTNAME=		liblarch-${MODPY_EGG_VERSION}
PKGNAME=		py-liblarch-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		devel

HOMEPAGE=		https://wiki.gnome.org/Projects/liblarch

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
