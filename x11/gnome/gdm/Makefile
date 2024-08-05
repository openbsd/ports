COMMENT=		GNOME display manager

GNOME_PROJECT=		gdm
GNOME_VERSION=		46.2

GH_ACCOUNT=		rnagy
GH_PROJECT=		gdm
GH_COMMIT=		f3c996f2feccd86b58e7f5eeffda863c3a513f0e
EXTRACT_SUFX=		.tar.gz

DISTFILES=		${GH_DISTFILE}
DISTFILES.puffy =	gdm-puffy.png
# XXX can't use GH_DISTFILE since EXTRACT_ONLY expects filenames instead of
# DISTFILES filename{url}sufx patterns
EXTRACT_ONLY=		${ALL_DISTFILES:N*puffy*}

SITES=			${SITES_GITHUB}
SITES.puffy=		https://distfiles.bsdfrog.org/

SHARED_LIBS +=  gdm                  0.0      # 1.0

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xau Xdmcp accountsservice c canberra canberra-gtk3
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl pam util xcb consolekit json-glib-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/check \
			devel/iso-codes

RUN_DEPENDS=		devel/iso-codes

# dbus-run-session(1)
RUN_DEPENDS +=		x11/dbus

# 'dconf compile'
BUILD_DEPENDS +=	devel/dconf

# cyclic dependency, see pkg/DESCR
# bring _all_ runtime dependencies (including consolekit2 and zenity)
#RUN_DEPENDS +=		x11/gnome/session

# cyclic dependency
# gnome-initial-setup is an opt-in handled in meta/gnome
#RUN_DEPENDS +=		x11/gnome/initial-setup

# orca-autostart.desktop
RUN_DEPENDS +=		x11/gnome/orca

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/json-glib \
			security/openpam \
			sysutils/accountsservice>=22.08.8p3 \
			sysutils/consolekit>=1.2.6p4

MODGNOME_TOOLS=		gobject-introspection yelp
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

# common/gdm-address.c
MODGNOME_CPPFLAGS +=	-DHAS_SA_LEN

# daemon/gdm-session-worker.c
MODGNOME_CPPFLAGS +=	-DHAVE_LOGINCAP

# ConsoleKit
MODGNOME_CPPFLAGS +=	-DWITH_CONSOLE_KIT=1 \
			-DCONSOLEKIT_DIR='\"${LOCALBASE}/libexec\"'

CONFIGURE_ARGS=		-Ddefault-pam-config=none \
			-Duser=_gdm \
			-Duser-display-server=false \
			-Dat-spi-registryd-dir=${LOCALBASE}/libexec \
			-Dcustom-conf=${SYSCONFDIR}/gdm/custom.conf \
			-Ddbus-sys=${SYSCONFDIR}/dbus-1/system.d \
			-Dlog-dir=/var/log/gdm \
			-Dgroup=_x11 \
			-Ddmconfdir=${LOCALBASE}/share/xsessions \
			-Dinitial-vt=05 \
			-Dlang-file=${SYSCONFDIR}/gdm/locale.conf \
			-Dpid-file=/var/run/gdm.pid \
			-Dplymouth=disabled \
			-Dlibaudit=disabled \
			-Dselinux=disabled \
			-Dscreenshot-dir=/var/run/gdm/greeter \
			-Dsysconfsubdir=gdm \
			-Dsystemd-journal=false \
			-Dworking-dir=/var/db/gdm \
			-Dxauth-dir=/var/run/gdm

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	sed -i -e 's,/usr/local,${LOCALBASE},g' \
		-e 's,/bin/bash,/bin/ksh,g' \
		${WRKSRC}/daemon/gdm-session-worker.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/gdm-puffy.png \
		${PREFIX}/share/pixmaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdm/etc/pam.d
	${INSTALL_DATA} ${FILESDIR}/gdm-* \
		${PREFIX}/share/examples/gdm/etc/pam.d
	${SUBST_CMD} ${WRKSRC}/daemon/gdm-local-display-factory.c
	${SUBST_CMD} -m 0644 -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${FILESDIR}/10_org.gnome.login-screen.gschema.override \
		${PREFIX}/share/glib-2.0/schemas/10_org.gnome.login-screen.gschema.override
	mv ${WRKINST}/etc/gdm ${PREFIX}/share/examples/gdm/etc
	mv ${WRKINST}/etc/dbus-1 ${PREFIX}/share/examples/gdm/etc
	${INSTALL_DATA} ${FILESDIR}/locale.conf \
		${PREFIX}/share/examples/gdm/etc/gdm/locale.conf
	${SUBST_CMD} -m 0555 -c -o ${BINOWN} -g ${BINGRP} \
		${FILESDIR}/Xsession \
		${PREFIX}/share/examples/gdm/etc/gdm/Xsession

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
