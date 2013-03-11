# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:20 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the Pango libraries

DISTNAME=	Pango-1.221
REVISION=	2
CATEGORIES=	x11 devel
CPAN_AUTHOR=	TSCH

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan \
		devel/gettext
USE_GROFF =	Yes

LIB_DEPENDS=	devel/pango

WANTLIB=	X11 Xau Xdmcp Xrender cairo expat fontconfig freetype \
		glib-2.0 gmodule-2.0 gobject-2.0 m pixman-1 png \
		pthread-stubs xcb z xcb-render xcb-render-util \
		pangocairo-1.0 pango-1.0 pangoft2-1.0

RUN_DEPENDS=	devel/p5-Glib2 \
		graphics/p5-Cairo
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
