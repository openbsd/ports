# $OpenBSD: Makefile,v 1.18 2007/01/04 20:19:53 steven Exp $

COMMENT=	"GTK+2 program to synchronize an Apple iPod"
DISTNAME=	gtkpod-0.99.8
PKGNAME=	${DISTNAME}p1
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

LIB_DEPENDS=	id3tag.>=2::audio/libid3tag \
		gpod.>=400.0::audio/libgpod \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		glade-2.0.>=0.4::devel/libglade2 \
		mp4v2::audio/faad

WANTLIB=	X11 Xext Xrender c cairo fontconfig freetype m pthread z \
		xml2 glitz png glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		pango-1.0 pangoft2-1.0 pangocairo-1.0 atk-1.0

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
# trampolines needed for display_playlists.c
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -ftrampolines" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
