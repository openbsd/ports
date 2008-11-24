# $OpenBSD: Makefile,v 1.34 2008/11/24 09:10:11 ajacoutot Exp $

COMMENT=		GNOME display manager

GNOME_PROJECT=		gdm
GNOME_VERSION=		2.20.7
PKGNAME=		${DISTNAME}p0

HOMEPAGE=		http://www.gnome.org/projects/gdm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		bz2 c cairo croco-0.6 crypto dbus-1 dbus-glib-1 dmx \
		expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gsf-1 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread ssl util xml2 z

BUILD_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils \
			::x11/gnome/zenity
RUN_DEPENDS=		:sox-*:audio/sox \
			:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-audio-*:x11/gnome/audio \
			:hicolor-icon-theme-*:x11/hicolor-icon-theme \
			::x11/gnome/zenity
LIB_DEPENDS=		rsvg-2::x11/gnome/librsvg

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--sysconfdir="${SYSCONFDIR}/X11" \
			--localstatedir=/var \
			--mandir=${PREFIX}/man \
			--enable-secureremote=yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# XXX IPv6-only FLAVOR?
CONFIGURE_ARGS+=	--enable-ipv6=no

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples \
			dmconfdir=${PREFIX}/share/examples/dm
post-patch:
	ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdm; \
	find ${PREFIX}/share/examples/gdm -type d -exec chmod 555 {} \;
	find ${PREFIX}/share/examples/gdm ! -type d -exec chmod 444 {} \;
	chmod 644 ${PREFIX}/share/examples/gdm/custom.conf

.include <bsd.port.mk>
