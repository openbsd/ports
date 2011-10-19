# $OpenBSD: Makefile,v 1.112 2011/10/19 08:13:04 ajacoutot Exp $

BROKEN=			greeter doesn't start; port to bsd_auth(3)

SHARED_ONLY=		Yes

COMMENT=		GNOME display manager

GNOME_PROJECT=		gdm
GNOME_VERSION=		3.2.1

HOMEPAGE=		http://projects.gnome.org/gdm/

SHARED_LIBS +=  gdmgreeter                0.0 # 1.0
SHARED_LIBS +=  gdmsimplegreeter          0.0 # 1.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm accountsservice
WANTLIB += atk-1.0 c cairo cairo-gobject canberra canberra-gtk3
WANTLIB += crypto dbus-1 dbus-glib-1 drm execinfo expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 ltdl m nspr4 nss3 nssutil3
WANTLIB += ogg pam pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs smime3
WANTLIB += softokn3 sqlite3 ssl3 upower-glib util vorbis vorbisfile
WANTLIB += wrap xcb xcb-render xcb-shm xkbfile xklavier xml2 z

BUILD_DEPENDS=		x11/gnome/zenity

#XXX
#RUN_DEPENDS=		audio/sox \
#			x11/hicolor-icon-theme \
#			x11/gnome/zenity \
#			sysutils/consolekit

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			sysutils/upower \
			sysutils/accountsservice \
			security/libdpam \
			x11/gnome/libxklavier \
			devel/libexecinfo \
			security/nss

MODULES=		devel/gettext \
			devel/gconf2 \
			x11/gnome \
			devel/dconf

MODGCONF2_SCHEMAS_DIR=	gdm

USE_LIBTOOL=		Yes
MODGNOME_TOOLS= 	yelp

MODGNOME_CPPFLAGS=	-I${X11BASE}/include -DHAS_SA_LEN
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		--localstatedir=/var \
			--mandir=${PREFIX}/man \
			--with-at-spi-registryd-directory=${LOCALBASE}/libexec \
			--with-custom-conf=${SYSCONFDIR}/X11/gdm/custom.conf \
			--with-dbus-sys=${SYSCONFDIR}/dbus-1/system.d \
			--with-log-dir=/var/log/gdm \
			--with-working-directory=/var/db/gdm \
			--with-selinux=no \
			--with-xevie=no \
			--with-libaudit=no \
			--with-sysconfsubdir=X11/gdm \
			--with-pid-file=/var/run/gdm.pid \
			--with-dmconfdir="${LOCALBASE}/share/xsessions" \
			--with-screenshot-dir=/var/run/gdm/greeter \
			--with-incomplete-locales \
			--with-user=_gdm \
			--with-group=_gdm \
			--with-tcp-wrappers \
			--with-x \
			--with-xinerama \
			--with-xdmcp \
			--with-console-kit \
			--with-xauth-dir=/var/run/gdm \
			--with-screenshot-dir=/var/run/gdm/greeter \
			--enable-authentication-scheme=crypt \
			--disable-console-helper

# --with-lang-file=${SYSCONFDIR}/sysconfig/i18n
# XXX --enable-authentication-scheme=bsdauth

# XXX IPv6-only FLAVOR?
CONFIGURE_ARGS+=	--disable-ipv6

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in \
		${WRKSRC}/data/{Init.in,PreSession.in,Xsession.in,gdm.schemas}
	perl -pi -e 's,root:root,root:wheel,g;' \
		-e 's,root:gdm,root:676,g;' \
		-e 's,gdm:gdm,676:676,g' ${WRKSRC}/data/Makefile.in
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/daemon/gdm-session-worker.c
	perl -pi -e 's,/bin/true,/usr/bin/true,g' \
		${WRKSRC}/data/applications/mime-dummy-handler.desktop \
		${WRKSRC}/configure \
		${WRKSRC}/data/00-upstream-settings \
		${WRKSRC}/data/upstream-settings \
		${WRKSRC}/data/session-setup.entries
.for i in gdm-simple-greeter gnome-session-check-accelerated gnome-settings-daemon
	perl -pi -e 's,/usr/libexec,${PREFIX},g' \
		${WRKSRC}/data/applications/gdm-simple-greeter.desktop.in
.endfor

pre-fake:
	# cf. gconftool-2 below
	${INSTALL_DATA_DIR} ${WRKINST}/var/db/gdm/.gconf.mandatory
	touch ${WRKINST}/var/db/gdm/.gconf.mandatory/%gconf-tree.xml

post-install:
	# PATH is modified by the gconf2 MODULE, so give the full path
	# to the real gconftool-2 binary.
	${LOCALBASE}/bin/gconftool-2 --direct \
		--config-source=xml:merged:${WRKINST}/var/db/gdm/.gconf.mandatory \
		--recursive-unset /
	${LOCALBASE}/bin/gconftool-2 --direct \
		--config-source=xml:merged:${WRKINST}/var/db/gdm/.gconf.mandatory \
		--load ${WRKSRC}/data/session-setup.entries
	# clean up the mess
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdm/db
	mv ${WRKINST}/etc/dbus-1 ${PREFIX}/share/examples/gdm
	mv ${WRKINST}/etc/X11/ ${PREFIX}/share/examples/gdm/
	mv ${WRKINST}/etc/dconf ${PREFIX}/share/examples/gdm/
	mv ${WRKINST}/var/db/gdm ${PREFIX}/share/examples/gdm/db
	rm -rf ${WRKINST}/etc/pam.d ${WRKINST}/var/run/gdm
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/gdm/*

.include <bsd.port.mk>
