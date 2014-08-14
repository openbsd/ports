# $OpenBSD: Makefile,v 1.13 2014/08/14 07:06:00 ajacoutot Exp $

COMMENT=	multimedia framework for Python

MODPY_EGG_VERSION= 1.5
DISTNAME=	PyGraphics-${MODPY_EGG_VERSION}
PKGNAME=	py-graphics-${MODPY_EGG_VERSION}
REVISION=	8
EPOCH=		0

CATEGORIES=	graphics

HOMEPAGE=	https://code.google.com/p/pygraphics/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://pygraphics.googlecode.com/files/

MODULES=	lang/python

WRKDIST=	${WRKDIR}
PKG_ARCH=	*
NO_TEST=	Yes

RUN_DEPENDS=	${MODPY_TKINTER_DEPENDS} \
		graphics/py-Pillow

.include <bsd.port.mk>
