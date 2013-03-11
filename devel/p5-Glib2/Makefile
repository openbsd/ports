# $OpenBSD: Makefile,v 1.23 2013/03/11 10:50:17 espie Exp $

BROKEN=		glib2 is threaded but our perl is not so we end up with undefined symbols

SHARED_ONLY=	Yes

COMMENT=	perl interface to the Glib libraries

V=		1.222
DISTNAME=	Glib-$V
PKGNAME=	p5-Glib2-$V
REVISION=	3
CATEGORIES=	x11 devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES+=	cpan \
		devel/gettext
USE_GROFF =	Yes

LIB_DEPENDS=	devel/glib2
BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig
WANTLIB =	glib-2.0 gobject-2.0

CONFIGURE_ARGS=	 --disable-threadsafe

.include <bsd.port.mk>
