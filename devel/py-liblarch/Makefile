# $OpenBSD: Makefile,v 1.3 2014/01/09 13:28:39 ajacoutot Exp $

COMMENT=		python library to easily handle data structure

MODPY_EGG_VERSION=	2.1.0
DISTNAME=		liblarch-${MODPY_EGG_VERSION}
PKGNAME=		py-liblarch-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		https://wiki.gnome.org/Projects/liblarch

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/liblarch/liblarch/archive/
DISTFILES=		v${MODPY_EGG_VERSION}${EXTRACT_SUFX}

MODULES=		lang/python

RUN_DEPENDS=		x11/py-gtk2
TEST_DEPENDS=		x11/py-gtk2

MODPY_ADJ_FILES=	run-tests

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
