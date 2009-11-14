# $OpenBSD: Makefile,v 1.92 2009/11/14 16:39:05 ajacoutot Exp $

COMMENT=		GNOME session

GNOME_PROJECT=		gnome-session
GNOME_VERSION=		2.28.0
PKGNAME=		${DISTNAME}p5

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-atom xcb-aux xcb-event
WANTLIB += z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::textproc/rarian \
		::textproc/xmlto \
		::x11/gnome/settings-daemon
LIB_DEPENDS=	execinfo::devel/libexecinfo
RUN_DEPENDS=	::x11/gnome/settings-daemon

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-session

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-splash \
		--disable-rebuilds
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo"

# XXX gconf2 MODULE changes this value but gsm-gconf.c uses this to
# find the right path for gconftool-2
CONFIGURE_ENV+=		GCONFTOOL=${LOCALBASE}/bin/gconftool-2

MAKE_FLAGS=		XSLTPROC="${LOCALBASE}/bin/xsltproc -nonet" \
			sysconfdir=${PREFIX}/share/examples/gnome-session

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-session
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/gnome-session/README.OpenBSD
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/gnome-session/README.OpenBSD

.include <bsd.port.mk>
