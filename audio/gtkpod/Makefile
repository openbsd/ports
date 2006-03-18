# $OpenBSD: Makefile,v 1.9 2006/03/18 07:08:21 sturm Exp $

COMMENT=	"GTK+2 program to synchronize an Apple iPod"
DISTNAME=	gtkpod-0.99.4
CATEGORIES=	audio x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://gtkpod.sourceforge.net/

MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	atk-1.0.800.0::devel/atk \
		id3tag.2::audio/libid3tag \
		gpod.302.0::audio/libgpod \
		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		glade-2.0.0.4::devel/libglade2 \
		glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0,gthread-2.0.0.0::devel/glib2 \
		pango-1.0.0.0,pangoft2-1.0.0.0,pangox-1.0.0.0,pangoxft-1.0.0.0::devel/pango \
		mp4v2.0::audio/faad

WANTLIB=	X11 Xext Xft Xrender c fontconfig freetype m pthread z \
		xml2		

MODULES=	gettext

CONFIGURE_STYLE=gnu
# trampolines needed for display_playlists.c
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -ftrampolines" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
