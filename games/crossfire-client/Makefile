# $OpenBSD: Makefile,v 1.4 2002/07/08 04:10:09 mark Exp $

COMMENT=	"graphical networked AD&D style game"

VERSION=	1.3.0
DISTNAME=	crossfire-client-${VERSION}
CATEGORIES=	games x11

HOMEPAGE=	http://crossfire.real-time.com/

MAINTAINER=	Mark Grimes <mark@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=crossfire/}

LIB_DEPENDS=   	gtk.1.2::x11/gtk+ \
	        png.1::graphics/png \
		SDL::devel/sdl

CONFIGURE_ARGS=	--disable-gnome	

USE_X11=		Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/utils
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
