# $OpenBSD: Makefile,v 1.9 2013/03/11 11:10:55 espie Exp $

COMMENT=	multimedia framework for Python

MODPY_EGG_VERSION= 1.5
DISTNAME=	PyGraphics-${MODPY_EGG_VERSION}
PKGNAME=	py-graphics-${MODPY_EGG_VERSION}
REVISION=	4
EPOCH=		0

CATEGORIES=	graphics

HOMEPAGE=	http://code.google.com/p/pygraphics/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pygraphics.googlecode.com/files/

MODULES=	lang/python

WRKDIST=	${WRKDIR}
PKG_ARCH=	*
NO_TEST=	Yes

RUN_DEPENDS=	${MODPY_TKINTER_DEPENDS} \
		graphics/py-Imaging

.include <bsd.port.mk>
