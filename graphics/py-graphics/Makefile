# $OpenBSD: Makefile,v 1.12 2014/04/06 21:10:30 sthen Exp $

COMMENT=	multimedia framework for Python

MODPY_EGG_VERSION= 1.5
DISTNAME=	PyGraphics-${MODPY_EGG_VERSION}
PKGNAME=	py-graphics-${MODPY_EGG_VERSION}
REVISION=	7
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
