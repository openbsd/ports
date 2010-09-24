# $OpenBSD: Makefile,v 1.16 2010/09/24 15:29:20 sthen Exp $

BROKEN=		glib2 is threaded but our perl is not so we end up with undefined symbols

SHARED_ONLY=	Yes

COMMENT=	perl interface to the Glib libraries

V=		1.222
DISTNAME=	Glib-$V
PKGNAME=	p5-Glib2-$V
REVISION=	1
CATEGORIES=	x11 devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES+=	cpan \
		devel/gettext

LIB_DEPENDS=	glib-2.0,gobject-2.0::devel/glib2
BUILD_DEPENDS=	::devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig

CONFIGURE_ARGS=	 --disable-threadsafe

.include <bsd.port.mk>
