# $OpenBSD: Makefile,v 1.6 2006/08/03 23:15:57 espie Exp $

COMMENT=		"Quasar DV codec"

DISTNAME=		libdv-0.104
PKGNAME=		${DISTNAME}p0
CATEGORIES=		multimedia

HOMEPAGE=		http://libdv.sourceforge.net/

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libdv/}

BUILD_DEPENDS=		::devel/pkgconfig

USE_LIBTOOL=		Yes

SHARED_LIBS=		dv	4.2

MODGNU_SHARED_LIBS=	dv	''

MODULES=		devel/gettext
LIB_DEPENDS=		SDL.>=2::devel/sdl \
			gdk.>=1.2,gtk.>=1.2::x11/gtk+ \
			glib.>=1.2,gmodule.>=1.2::devel/glib \
			popt::devel/popt

WANTLIB=		X11 Xext Xi Xv c m ossaudio pthread usbhid

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-sdl --enable-gtk --with-x
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
