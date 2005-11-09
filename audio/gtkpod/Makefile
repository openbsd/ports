# $OpenBSD: Makefile,v 1.5 2005/11/09 01:25:38 jcs Exp $

COMMENT=	"GTK+2 program to synchronize an Apple iPod"

DISTNAME=	gtkpod-0.88.2
CATEGORIES=	audio x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://gtkpod.sourceforge.net/

# gpl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

LIB_DEPENDS=	atk-1.0.800.0::devel/atk \
		id3tag.2::audio/libid3tag \
		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0,gthread-2.0.0.0::devel/glib2 \
		pango-1.0.600.0,pangox-1.0.600.0,pangoxft-1.0.600.0::devel/pango \
		mp4v2.0::audio/faad

WANTLIB=	X11 Xcursor Xext Xft Xinerama Xrender c fontconfig freetype m \
		pthread

MODULES=	gettext

CONFIGURE_STYLE= gnu
# trampolines needed for display_playlists.c
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="-I${LOCALBASE}/include -ftrampolines" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
