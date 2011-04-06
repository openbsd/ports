# $OpenBSD: Makefile,v 1.30 2011/04/06 18:26:42 ajacoutot Exp $

COMMENT=		Python bindings for the GNOME desktop

GNOME_PROJECT=		gnome-python-desktop
GNOME_VERSION=		2.32.0
PKGNAME=		py-gnome-desktop-${VERSION}
REVISION=		3

HOMEPAGE=		http://www.pygtk.org/

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm art_lgpl_2 asn1 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 cairo camel-1.2 canberra canberra-gtk com_err
WANTLIB += croco-0.6 crypto dbus-1 dbus-glib-1 drm ebook-1.2 ecal-1.2
WANTLIB += edataserver-1.2 evdocument evview execinfo expat ffi
WANTLIB += fontconfig freetype gailutil gconf-2 gcrypt gdata gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmime-2.4 gmodule-2.0
WANTLIB += gnome-2 gnome-desktop-2 gnome-keyring gnome-media-profiles
WANTLIB += gnomecanvas-2 gnomeprint-2-2 gnomeprintui-2-2 gnomeui-2
WANTLIB += gnomevfs-2 gnutls gobject-2.0 gpg-error gssapi gstreamer-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 gtop-2.0 ical icalss icalvcal
WANTLIB += krb5 kvm ltdl m metacity-private nspr4 nss3 nssutil3
WANTLIB += ogg panel-applet-2 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png popt proxy pthread pthread-stubs
WANTLIB += rsvg-2 smime3 soup-2.4 soup-gnome-2.4 sqlite3 ssl ssl3
WANTLIB += startup-notification-1 tasn1 totem-plparser util vorbis
WANTLIB += vorbisfile wnck-1 xcb xcb-atom xcb-aux xcb-event xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/gnome/py-gnome>=2.28.0
LIB_DEPENDS=		devel/libgsf \
			devel/libgtop2 \
			x11/gnome/libgnomeprintui \
			x11/gnome/librsvg \
			x11/gnome/media \
			x11/gnome/metacity \
			x11/gnome/panel \
			x11/gnome/totem-pl-parser>=2.28.1 \
			graphics/evince,-main>=2.32.0 \
			devel/libgdata

LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-metacity \
			--disable-bugbuddy

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-gnome-desktop
	cd ${WRKSRC}/examples; tar cf - * | tar xf - -C \
		${PREFIX}/share/examples/py-gnome-desktop
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/examples/py-gnome-desktop

do-regress: fake
	cd ${WRKSRC}/tests && \
		env PYTHONPATH="${WRKINST}${MODPY_LIBDIR}/site-packages/gtk-2.0" \
		${MODPY_BIN} runtests.py

.include <bsd.port.mk>
