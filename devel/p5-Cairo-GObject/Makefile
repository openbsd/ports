# $OpenBSD: Makefile,v 1.1.1.1 2020/05/16 11:03:30 sthen Exp $

COMMENT =	integrate Cairo into the Glib type system

DISTNAME =	Cairo-GObject-1.005

CATEGORIES =	devel

# LGPLv2.1
PERMIT_PACKAGE =	OK

WANTLIB += c cairo cairo-gobject freetype glib-2.0 gobject-2.0
WANTLIB += intl perl z

MODULES =		cpan

RUN_DEPENDS =	devel/p5-Glib2>=1.224 \
		devel/p5-ExtUtils-Depends>=0.2 \
		devel/p5-ExtUtils-PkgConfig>=1.0 \
		graphics/p5-Cairo>=1.080
BUILD_DEPENDS =	${RUN_DEPENDS}

CPAN_AUTHOR =	XAOC

.include <bsd.port.mk>
