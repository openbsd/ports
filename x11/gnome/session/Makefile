# $OpenBSD: Makefile,v 1.13 2004/12/15 13:57:57 alek Exp $

COMMENT=		"GNOME session"

DISTNAME=		gnome-session-2.8.1
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-session/2.8/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcursor Xext Xft Xinerama \
		Xmu Xrender Xt art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c crypto esd fontconfig freetype \
		gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 \
		gobject-2.0.0.0 gthread-2.0.0.0 gtk-x11-2.0.0.0 jpeg m \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
		popt pthread ssl wrap xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS= 		gnomeui-2.0::x11/gnome/libgnomeui

# Here we hang all the additional ports that will make up a satisfying
# Gnome2 user experience :)
RUN_DEPENDS+=		:gnome-applets2-*:x11/gnome/applets2
RUN_DEPENDS+=		:gnome-terminal-*:x11/gnome/terminal
RUN_DEPENDS+=		:gnome-themes-*:x11/gnome/themes
RUN_DEPENDS+=		:yelp-*:x11/gnome/yelp
#RUN_DEPENDS+=		:xscreensaver-*:x11/xscreensaver,gtk2,no_gle

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--disable-rebuilds
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-session
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
