# $OpenBSD: Makefile,v 1.213 2014/09/04 05:31:34 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME display manager

GNOME_PROJECT=		gdm
GNOME_VERSION=		3.12.2
REVISION=		1

SHARED_LIBS +=  gdm                  0.0      # 1.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender accountsservice atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject canberra
WANTLIB += canberra-gtk3 dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz ltdl m ogg pam
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs util vorbis vorbisfile xcb
WANTLIB += xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

BUILD_DEPENDS=		devel/check \
			devel/iso-codes

RUN_DEPENDS=		devel/iso-codes

# 'dconf compile'
BUILD_DEPENDS +=	devel/dconf

# cyclic dependency, see pkg/DESCR
# bring _all_ runtime dependencies (including consolekit and zenity)
#RUN_DEPENDS +=		x11/gnome/session

# cyclic dependency
# gnome-initial-setup is an opt-in handled in meta/gnome
#RUN_DEPENDS +=		x11/gnome/initial-setup

# caribou-autostart.desktop
RUN_DEPENDS +=		x11/gnome/caribou

# orca-autostart.desktop
RUN_DEPENDS +=		x11/gnome/orca

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			security/openpam \
			sysutils/accountsservice

MODGNOME_TOOLS += gobject-introspection gtk-update-icon-cache yelp
MODGNOME_CPPFLAGS=	-I${X11BASE}/include -DHAS_SA_LEN
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69

CONFIGURE_ARGS=		--disable-systemd-journal \
			--without-systemd \
			--mandir=${PREFIX}/man \
			--with-lang-file=${SYSCONFDIR}/gdm/locale.conf \
			--with-at-spi-registryd-directory=${LOCALBASE}/libexec \
			--with-custom-conf=${SYSCONFDIR}/gdm/custom.conf \
			--with-dbus-sys=${SYSCONFDIR}/dbus-1/system.d \
			--with-log-dir=/var/log/gdm \
			--with-working-directory=/var/db/gdm \
			--with-sysconfsubdir=gdm \
			--with-pid-file=/var/run/gdm.pid \
			--with-dmconfdir="${LOCALBASE}/share/xsessions" \
			--with-screenshot-dir=/var/run/gdm/greeter \
			--with-user=_gdm \
			--with-group=_gdm \
			--with-console-kit \
			--with-xauth-dir=/var/run/gdm \
			--with-initial-vt=05

pre-configure:
	perl -pi -e 's,root:root,root:wheel,g;' \
		-e 's,root:gdm,root:676,g;' \
		-e 's,gdm:gdm,676:676,g' ${WRKSRC}/data/Makefile.in
	perl -pi -e 's,/usr/local,${LOCALBASE},g;' \
		-e 's,/bin/bash,/bin/ksh,g' \
		${WRKSRC}/daemon/gdm-session-worker.c

post-install:
	rm -rf ${WRKINST}/var/run/gdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdm/{etc/pam.d,var/db}
	${INSTALL_DATA} ${FILESDIR}/gdm-* \
		${PREFIX}/share/examples/gdm/etc/pam.d
	${INSTALL_DATA} ${FILESDIR}/10_org.gnome.login-screen.gschema.override \
		${PREFIX}/share/glib-2.0/schemas
	mv ${WRKINST}/etc/gdm ${PREFIX}/share/examples/gdm/etc
	mv ${WRKINST}/etc/dbus-1 ${PREFIX}/share/examples/gdm/etc
	mv ${WRKINST}/var/db/gdm ${PREFIX}/share/examples/gdm/var/db
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdm/var/db/gdm/.pulse
	${INSTALL_DATA} ${FILESDIR}/client.conf \
		${PREFIX}/share/examples/gdm/var/db/gdm/.pulse
	${INSTALL_DATA} ${FILESDIR}/locale.conf \
		${PREFIX}/share/examples/gdm/etc/gdm/locale.conf
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/gdm/*

.include <bsd.port.mk>
