# $OpenBSD: Makefile,v 1.5 2006/11/25 16:32:35 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface to the Glib libraries"

MODULES=	cpan
DISTNAME=	Glib-1.120
PKGNAME=	p5-Glib2-1.120
CATEGORIES=	x11 devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES+=	devel/gettext

USE_GMAKE=	Yes

LIB_DEPENDS=	glib-2.0,gobject-2.0::devel/glib2
BUILD_DEPENDS=	::devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig

CONFIGURE_ARGS=	 --disable-threadsafe

.include <bsd.port.mk>
