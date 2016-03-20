# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:24 naddy Exp $

COMMENT=	dynamically create Perl language bindings

DISTNAME=	Glib-Object-Introspection-0.040

CATEGORIES=	devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0 perl

MODULES=	cpan devel/gettext
CPAN_AUTHOR=	XAOC

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig \
		${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Glib2>=1.320
LIB_DEPENDS=	devel/gobject-introspection

.include <bsd.port.mk>
