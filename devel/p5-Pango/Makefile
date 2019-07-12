# $OpenBSD: Makefile,v 1.21 2019/07/12 20:45:03 sthen Exp $

COMMENT=	perl interface to the Pango libraries

DISTNAME =	Pango-1.227
CATEGORIES=	x11 devel
CPAN_AUTHOR=	XAOC
REVISION =	1

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB =  c cairo fontconfig freetype glib-2.0 gobject-2.0 iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 perl z

MODULES=	cpan

LIB_DEPENDS=	devel/pango


RUN_DEPENDS=	devel/p5-Glib2 \
		graphics/p5-Cairo

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

TEST_IS_INTERACTIVE=	x11
TEST_DEPENDS=		x11/p5-Gtk2

.include <bsd.port.mk>
