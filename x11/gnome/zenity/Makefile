# $OpenBSD: Makefile,v 1.4 2004/12/15 13:57:57 alek Exp $

COMMENT=		"dialogs for Gnome"

DISTNAME=		zenity-2.8.1
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Balmer <marc@msys.ch>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xcursor Xext Xft Xinerama Xrender art_lgpl_2 \
		atk-1.0.0.0 c fontconfig freetype gdk-x11-2.0.0.0 \
		gdk_pixbuf-2.0.0.0 glade-2.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 gtk-x11-2.0.0.0 iconv intl m pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 popt xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/zenity/2.8/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper-*:textproc/scrollkeeper

LIB_DEPENDS=		gconf-2::devel/gconf2 \
			gnomecanvas-2::x11/gnome/libgnomecanvas \

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
