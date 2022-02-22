# $OpenBSD: Makefile,v 1.12 2022/02/22 04:22:20 bket Exp $

COMMENT=		python library to easily handle data structure

GH_ACCOUNT=		getting-things-gnome
GH_PROJECT=		liblarch
GH_TAGNAME=		v3.0
MODPY_EGG_VERSION=	${GH_TAGNAME:S/v//}
DISTNAME=		liblarch-${MODPY_EGG_VERSION}
PKGNAME=		py-liblarch-${MODPY_EGG_VERSION}
REVISION=		3

CATEGORIES=		devel

HOMEPAGE=		https://wiki.gnome.org/Projects/liblarch

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

TEST_IS_INTERACTIVE=	x11

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
