# $OpenBSD: Makefile,v 1.15 2009/10/13 11:13:12 ajacoutot Exp $

COMMENT=		Python bindings for the GNOME desktop

GNOME_PROJECT=		gnome-python-desktop
GNOME_VERSION=		2.28.0
PKGNAME=		py-gnome-desktop-${VERSION}p0

HOMEPAGE=		http://www.pygtk.org/

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 asn1 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 bz2
WANTLIB += cairo camel-1.2 canberra canberra-gtk com_err croco-0.6
WANTLIB += crypto dbus-1 dbus-glib-1 ebook-1.2 ecal-1.2 edataserver-1.2
WANTLIB += execinfo expat ffi fontconfig freetype gailutil gconf-2
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnome-2 gnome-desktop-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomeprint-2-2 gnomeui-2
WANTLIB += gnomevfs-2 gnutls gobject-2.0 gpg-error gsf-1 gssapi
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-x11-2.0 ical icalss
WANTLIB += icalvcal krb5 kvm ltdl m nspr4 nss3 ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png popt pthread-stubs
WANTLIB += smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 startup-notification-1
WANTLIB += tasn1 util vorbis vorbisfile wnck-1 xcb xcb-atom xcb-aux
WANTLIB += xcb-event xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:py-gnome->=2.28.0:x11/gnome/py-gnome \
			::x11/gnome/bug-buddy
LIB_DEPENDS=		gtop-2.0::devel/libgtop2 \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui \
			rsvg-2.>=20::x11/gnome/librsvg \
			gnome-media-profiles::x11/gnome/media \
			metacity-private::x11/gnome/metacity \
			panel-applet-2::x11/gnome/panel \
			totem-plparser::x11/gnome/totem-pl-parser \
			evdocument,evview::graphics/evince,-main

USE_X11=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-metacity

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
