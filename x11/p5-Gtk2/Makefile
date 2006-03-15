# $OpenBSD: Makefile,v 1.1.1.1 2006/03/15 16:10:45 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	"set of modules to use Gtk+2 libraries from Perl"

DISTNAME=	Gtk2-1.120
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	x11 perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	m freetype fontconfig X11 Xext Xft Xrender \
		atk-1.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Gtk2/}

MODULES=	devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes

LIB_DEPENDS=	gtk-x11-2.0.0.0,gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0::x11/gtk+2
BUILD_DEPENDS=	::devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig \
		${RUN_DEPENDS}

RUN_DEPENDS=	::devel/p5-Glib2
		
CONFIGURE_STYLE= perl

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point 
# to the appropriate .Xauthority file. 

REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS+=DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

.include <bsd.port.mk>
