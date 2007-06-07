# $OpenBSD: Makefile,v 1.6 2007/06/07 07:34:04 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface to the Glib libraries"

MODULES=	cpan
V=		1.144
DISTNAME=	Glib-${V}
PKGNAME=	p5-Glib2-${V}
CATEGORIES=	x11 devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES+=	devel/gettext

LIB_DEPENDS=	glib-2.0,gobject-2.0::devel/glib2
BUILD_DEPENDS=	::devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig

CONFIGURE_ARGS=	 --disable-threadsafe

.include <bsd.port.mk>
