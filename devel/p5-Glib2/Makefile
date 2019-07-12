# $OpenBSD: Makefile,v 1.42 2019/07/12 20:44:56 sthen Exp $

COMMENT=	perl interface to the Glib libraries

V =		1.326
DISTNAME=	Glib-${V}
PKGNAME=	p5-Glib2-${V}
CATEGORIES=	x11 devel

CPAN_AUTHOR=	XAOC

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c glib-2.0 gobject-2.0 intl perl # uses perl ABI

MODULES=	cpan

LIB_DEPENDS=	devel/glib2

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
