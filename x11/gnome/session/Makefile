# $OpenBSD: Makefile,v 1.125 2010/10/18 13:18:15 jasper Exp $

COMMENT=		GNOME session

GNOME_PROJECT=		gnome-session
GNOME_VERSION=		2.32.0

REVISION=		3

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += z xcb-render xcb-render-util execinfo xcb

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::textproc/rarian \
		::textproc/xmlto \
		::x11/gnome/settings-daemon
LIB_DEPENDS=	::devel/libexecinfo
RUN_DEPENDS=	::x11/gnome/settings-daemon \
		::sysutils/consolekit

# polkit-gnome isn't really *required* but then we will loose the polkit
# auth. dialog ; same for gconf2-polkit, gconf2 and polkit are already
# dependencies and we want to be able to handle system-wide gconf entries.
# This should really be a dep. of a "gnome" metapackage.
RUN_DEPENDS+=	::x11/polkit-gnome
RUN_DEPENDS+=	::devel/gconf2,-polkit

DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-session

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-rebuilds
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo"

# XXX gconf2 MODULE changes this value but gsm-gconf.c uses this to
# find the right path for gconftool-2
CONFIGURE_ENV+=		GCONFTOOL=${LOCALBASE}/bin/gconftool-2

MAKE_FLAGS=		XSLTPROC="${LOCALBASE}/bin/xsltproc -nonet"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-session
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/gnome-session/README.OpenBSD
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/gnome-session/README.OpenBSD

.include <bsd.port.mk>
