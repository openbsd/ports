# $OpenBSD: Makefile,v 1.27 2014/06/14 23:24:57 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the Glib libraries

V=		1.304
DISTNAME=	Glib-${V}
PKGNAME=	p5-Glib2-${V}
CATEGORIES=	x11 devel
REVISION=	0

CPAN_AUTHOR=	XAOC

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += glib-2.0 gobject-2.0

MODULES=	cpan \
		devel/gettext

LIB_DEPENDS=	devel/glib2

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
