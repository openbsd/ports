# $OpenBSD: Makefile,v 1.3 2006/03/15 14:00:26 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface to the Glib libraries"

DISTNAME=	Glib-1.120
PKGNAME=	p5-Glib2-1.120
CATEGORIES=	x11 devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Glib/}

MODULES=	devel/gettext

USE_GMAKE=	Yes

LIB_DEPENDS=	glib-2.0.0.0,gobject-2.0.0.0::devel/glib2
BUILD_DEPENDS=	::devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	 --disable-threadsafe

.include <bsd.port.mk>
