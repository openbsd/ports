# $OpenBSD: Makefile,v 1.14 2011/11/02 09:57:22 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.061
REVISION=	4
CATEGORIES=	graphics devel
CPAN_AUTHOR=	TSCH
USE_GROFF =	Yes

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xrender expat fontconfig freetype \
		pixman-1 m z png pthread-stubs xcb cairo>=6
WANTLIB += GL glib-2.0 gobject-2.0 gthread-2.0 iconv intl xcb-render
WANTLIB += xcb-shm

LIB_DEPENDS=	graphics/cairo
BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
