# $OpenBSD: Makefile,v 1.7 2020/07/03 21:44:55 sthen Exp $

COMMENT=	dynamically create Perl language bindings

DISTNAME=	Glib-Object-Introspection-0.047
REVISION=	0

CATEGORIES=	devel

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c ffi girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0 perl intl

MODULES=	cpan
CPAN_AUTHOR=	XAOC

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig \
		devel/p5-Glib2

RUN_DEPENDS=	devel/p5-Glib2

LIB_DEPENDS=	devel/gobject-introspection

.include <bsd.port.mk>
