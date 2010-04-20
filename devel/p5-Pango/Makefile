# $OpenBSD: Makefile,v 1.3 2010/04/20 16:21:42 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the Pango libraries

DISTNAME=	Pango-1.221
CATEGORIES=	x11 devel
CPAN_AUTHOR=	TSCH

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan \
		devel/gettext

LIB_DEPENDS=	pangocairo-1.0,pango-1.0,pangoft2-1.0::devel/pango

WANTLIB=	X11 Xau Xdmcp Xrender cairo expat fontconfig freetype \
		glib-2.0 gmodule-2.0 gobject-2.0 glitz m pixman-1 png \
		pthread-stubs xcb z xcb-render xcb-render-util

RUN_DEPENDS=	::devel/p5-Glib2 \
		::graphics/p5-Cairo
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
