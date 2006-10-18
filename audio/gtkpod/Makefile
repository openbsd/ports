# $OpenBSD: Makefile,v 1.16 2006/10/18 18:02:13 ckuethe Exp $

COMMENT=	"GTK+2 program to synchronize an Apple iPod"
DISTNAME=	gtkpod-0.99.8
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://www.gtkpod.org/

MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	atk-1.0.>=800.0::devel/atk \
		id3tag.>=2::audio/libid3tag \
		gpod.>=400.0::audio/libgpod \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		glade-2.0.>=0.4::devel/libglade2 \
		glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
		pango-1.0,pangoft2-1.0,pangocairo-1.0::devel/pango \
		mp4v2::audio/faad

WANTLIB=	X11 c cairo fontconfig freetype m pthread z xml2

MODULES=	gettext

CONFIGURE_STYLE=gnu
# trampolines needed for display_playlists.c
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -ftrampolines" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
