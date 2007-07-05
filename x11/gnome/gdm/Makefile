# $OpenBSD: Makefile,v 1.18 2007/07/05 22:50:10 jasper Exp $

COMMENT=		GNOME display manager

GNOME_PROJECT=		gdm
GNOME_VERSION=		2.18.2

HOMEPAGE=		http://www.gnome.org/projects/gdm/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ORBit-2 X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
		Xrandr Xrender art_lgpl_2 atk-1.0 bz2 c cairo croco-0.6 \
		crypto dbus-1 dbus-glib-1 dmx expat fontconfig freetype \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gsf-1 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png popt pthread ssl util xml2 z

BUILD_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:hicolor-icon-theme-*:x11/hicolor-icon-theme
LIB_DEPENDS=		rsvg-2.>=18.1::x11/gnome/librsvg

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--sysconfdir="${SYSCONFDIR}/X11" \
			--localstatedir=/var
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdm; \
	mv ${WRKINST}/${SYSCONFDIR}/X11/gdm ${PREFIX}/share/examples/; \
	rmdir ${WRKINST}/${SYSCONFDIR}/X11/dm
	find ${PREFIX}/share/examples/gdm -type d -exec chmod 555 {} \;
	find ${PREFIX}/share/examples/gdm ! -type d -exec chmod 444 {} \;
	chmod 644 ${PREFIX}/share/examples/gdm/custom.conf

.include <bsd.port.mk>
