# $OpenBSD: Makefile,v 1.281 2019/11/02 16:34:15 ajacoutot Exp $

COMMENT=		GNOME display manager

GNOME_PROJECT=		gdm
GNOME_VERSION=		3.34.1

DISTFILES=		${DISTNAME}${EXTRACT_SUFX} puflogh1000X248.gif:0
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}
MASTER_SITES0=		http://www.openbsd.org/art/puffy/

SHARED_LIBS +=  gdm                  0.0      # 1.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender accountsservice atk-1.0
WANTLIB += atk-bridge-2.0 c cairo cairo-gobject canberra canberra-gtk3
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl ltdl m ogg pam
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread util vorbis vorbisfile xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		x11/gnome \
			devel/dconf

BUILD_DEPENDS=		devel/check \
			devel/iso-codes

RUN_DEPENDS=		devel/iso-codes

# 'dconf compile'
BUILD_DEPENDS +=	devel/dconf

# cyclic dependency, see pkg/DESCR
# bring _all_ runtime dependencies (including consolekit2 and zenity)
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

MODGNOME_TOOLS=		gobject-introspection yelp
MODGNOME_CPPFLAGS=	-I${X11BASE}/include -DHAS_SA_LEN
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_ARGS=		--mandir=${PREFIX}/man \
			--disable-systemd-journal \
			--disable-user-display-server \
			--without-systemd \
			--without-plymouth \
			--with-lang-file=${SYSCONFDIR}/gdm/locale.conf \
			--with-at-spi-registryd-directory=${LOCALBASE}/libexec \
			--with-custom-conf=${SYSCONFDIR}/gdm/custom.conf \
			--with-console-kit \
			--with-dbus-sys=${SYSCONFDIR}/dbus-1/system.d \
			--with-log-dir=/var/log/gdm \
			--with-working-directory=/var/db/gdm \
			--with-sysconfsubdir=gdm \
			--with-pid-file=/var/run/gdm.pid \
			--with-dmconfdir="${LOCALBASE}/share/xsessions" \
			--with-screenshot-dir=/var/run/gdm/greeter \
			--with-user=_gdm \
			--with-group=_gdm \
			--with-xauth-dir=/var/run/gdm \
			--with-initial-vt=05

pre-configure:
	sed -i -e 's,/usr/local,${LOCALBASE},g' \
		-e 's,/bin/bash,/bin/ksh,g' \
		${WRKSRC}/daemon/gdm-session-worker.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/puflogh1000X248.gif \
		${PREFIX}/share/pixmaps/
	rm -r ${WRKINST}/var/run/gdm ${WRKINST}/rules.d
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdm/{etc/pam.d,var/db}
	${INSTALL_DATA} ${FILESDIR}/gdm-* \
		${PREFIX}/share/examples/gdm/etc/pam.d
	${SUBST_CMD} -m 0644 -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${FILESDIR}/10_org.gnome.login-screen.gschema.override \
		${PREFIX}/share/glib-2.0/schemas/10_org.gnome.login-screen.gschema.override
	mv ${WRKINST}/etc/gdm ${PREFIX}/share/examples/gdm/etc
	mv ${WRKINST}/etc/dbus-1 ${PREFIX}/share/examples/gdm/etc
	mv ${WRKINST}/var/db/gdm ${PREFIX}/share/examples/gdm/var/db
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdm/var/db/gdm/.pulse
	${INSTALL_DATA} ${FILESDIR}/client.conf \
		${PREFIX}/share/examples/gdm/var/db/gdm/.pulse
	${INSTALL_DATA} ${FILESDIR}/locale.conf \
		${PREFIX}/share/examples/gdm/etc/gdm/locale.conf
	${SUBST_CMD} -m 0555 -c -o ${BINOWN} -g ${BINGRP} \
		${FILESDIR}/Xsession \
		${PREFIX}/share/examples/gdm/etc/gdm/Xsession

.include <bsd.port.mk>
