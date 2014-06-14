# $OpenBSD: Makefile,v 1.15 2014/06/14 23:24:58 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the Pango libraries

DISTNAME=	Pango-1.226
CATEGORIES=	x11 devel
CPAN_AUTHOR=	XAOC
REVISION=	0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan \
		devel/gettext

LIB_DEPENDS=	devel/pango

WANTLIB += cairo fontconfig freetype glib-2.0 gobject-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 z

RUN_DEPENDS=	devel/p5-Glib2 \
		graphics/p5-Cairo

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

TEST_IS_INTERACTIVE=	x11
TEST_DEPENDS=		x11/p5-Gtk2

.include <bsd.port.mk>
