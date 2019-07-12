# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:50 sthen Exp $

COMMENT=		python library to easily handle data structure

GH_ACCOUNT=		liblarch
GH_PROJECT=		liblarch
GH_TAGNAME=		v2.1.0
MODPY_EGG_VERSION=	${GH_TAGNAME:S/v//}
DISTNAME=		liblarch-${MODPY_EGG_VERSION}
PKGNAME=		py-liblarch-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		https://wiki.gnome.org/Projects/liblarch

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

RUN_DEPENDS=		x11/py-gtk2
TEST_DEPENDS=		x11/py-gtk2

MODPY_ADJ_FILES=	run-tests

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
