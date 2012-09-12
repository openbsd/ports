# $OpenBSD: Makefile,v 1.125 2012/09/12 08:54:52 ajacoutot Exp $

# XXX --with-lang-file=${SYSCONFDIR}/sysconfig/i18n

BROKEN=			needs PAM(7)

SHARED_ONLY=		Yes

COMMENT=		GNOME display manager

GNOME_PROJECT=		gdm
GNOME_VERSION=		3.4.1

HOMEPAGE=		http://projects.gnome.org/gdm/

SHARED_LIBS +=  gdmgreeter                0.0 # 1.0
SHARED_LIBS +=  gdmsimplegreeter          0.0 # 1.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm accountsservice
WANTLIB += atk-1.0 c cairo cairo-gobject canberra canberra-gtk3
WANTLIB += dbus-1 dbus-glib-1 drm execinfo expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 ltdl m nspr4 nss3 nssutil3
WANTLIB += ogg pam pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs smime3
WANTLIB += softokn3 sqlite3 ssl3 stdc++ upower-glib util vorbis
WANTLIB += vorbisfile wrap xcb xcb-render xcb-shm xkbfile xklavier
WANTLIB += xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

# bring _all_ runtime dependencies (including sysutils/consolekit)
RUN_DEPENDS=		x11/gnome/session

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/libexecinfo \
			security/nss \
			sysutils/accountsservice \
			sysutils/upower \
			x11/gnome/libxklavier 
# XXX 
#LIB_DEPENDS +=		security/openpam 

LIBTOOL_FLAGS=		--tag=disable-static

MODGNOME_TOOLS= 	yelp
MODGNOME_ICON_CACHE=	Yes
MODGNOME_CPPFLAGS=	-I${X11BASE}/include -DHAS_SA_LEN
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		--disable-static \
			--mandir=${PREFIX}/man \
			--with-at-spi-registryd-directory=${LOCALBASE}/libexec \
			--with-custom-conf=${SYSCONFDIR}/gdm/custom.conf \
			--with-dbus-sys=${SYSCONFDIR}/dbus-1/system.d \
			--with-log-dir=/var/log/gdm \
			--with-working-directory=/var/db/gdm \
			--with-sysconfsubdir=gdm \
			--with-pid-file=/var/run/gdm.pid \
			--with-dmconfdir="${LOCALBASE}/share/xsessions" \
			--with-screenshot-dir=/var/run/gdm/greeter \
			--with-incomplete-locales \
			--with-user=_gdm \
			--with-group=_gdm \
			--with-console-kit \
			--with-xauth-dir=/var/run/gdm \
			--without-systemd \
			--without-tcp-wrappers \
			--disable-console-helper

# XXX IPv6-only FLAVOR?
CONFIGURE_ARGS +=	--disable-ipv6

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in ${WRKSRC}/data/Makefile.in \
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
		${WRKSRC}/data/session-setup.entries
.for i in gdm-simple-greeter gnome-session-check-accelerated gnome-settings-daemon
	perl -pi -e 's,/usr/libexec,${PREFIX},g' \
		${WRKSRC}/data/applications/gdm-simple-greeter.desktop.in
.endfor

post-install:
	rm ${PREFIX}/lib/gdm/simple-greeter/extensions/*.la
	rm -r ${WRKINST}/etc/pam.d/gdm-{fingerprint,smartcard}
	rm -rf ${WRKINST}/var/run/gdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdm/{etc,var/db}
	mv ${WRKINST}/etc/gdm ${PREFIX}/share/examples/gdm/etc
	mv ${WRKINST}/etc/dbus-1 ${PREFIX}/share/examples/gdm/etc
	mv ${WRKINST}/etc/dconf ${PREFIX}/share/examples/gdm/etc
	mv ${WRKINST}/etc/pam.d ${PREFIX}/share/examples/gdm/etc
	mv ${WRKINST}/var/db/gdm ${PREFIX}/share/examples/gdm/var/db
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/gdm/*

.include <bsd.port.mk>
