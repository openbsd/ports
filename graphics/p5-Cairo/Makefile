# $OpenBSD: Makefile,v 1.13 2010/12/03 11:45:37 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.061
REVISION=	3
CATEGORIES=	graphics devel
CPAN_AUTHOR=	TSCH
USE_GROFF =	Yes

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender expat fontconfig freetype \
		pixman-1 m z png pthread-stubs xcb cairo>=6

LIB_DEPENDS=	graphics/cairo
BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
