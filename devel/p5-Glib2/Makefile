# $OpenBSD: Makefile,v 1.30 2015/06/30 08:57:16 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the Glib libraries

V=		1.310
DISTNAME=	Glib-${V}
PKGNAME=	p5-Glib2-${V}
CATEGORIES=	x11 devel

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
