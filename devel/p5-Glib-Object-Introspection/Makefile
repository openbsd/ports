# $OpenBSD: Makefile,v 1.3 2017/04/28 16:54:46 ajacoutot Exp $

COMMENT=	dynamically create Perl language bindings

DISTNAME=	Glib-Object-Introspection-0.042

CATEGORIES=	devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0 perl

MODULES=	cpan devel/gettext
CPAN_AUTHOR=	XAOC

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig \
		${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Glib2
LIB_DEPENDS=	devel/gobject-introspection

.include <bsd.port.mk>
