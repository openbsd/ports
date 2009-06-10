# $OpenBSD: Makefile,v 1.12 2009/06/10 20:27:09 kili Exp $

COMMENT=		Python bindings for the GNOME desktop

GNOME_PROJECT=		gnome-python-desktop
GNOME_VERSION=		2.24.1
PKGNAME=		py-gnome-desktop-${VERSION}p6

HOMEPAGE=		http://www.pygtk.org/

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 asn1 atk-1.0 avahi-client \
		avahi-common avahi-glib bonobo-2 \
		bonobo-activation bonoboui-2 bz2 cairo camel-1.2 com_err \
		croco-0.6 crypto dbus-1 dbus-glib-1 ebook-1.2 ecal-1.2 \
		edataserver-1.2 expat fontconfig freetype gailutil \
		gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-desktop-2 \
		gnome-keyring gnomecanvas-2 gnomeprint-2-2 gnomeui-2 \
		gnomevfs-2 gnutls gobject-2.0 gpg-error gsf-1 gssapi \
		gstreamer-0.10 \
		gthread-2.0 gtk-x11-2.0 krb5 kvm m nspr4 nss3 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4 \
		png popt smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 \
		startup-notification-1 tasn1 util wnck-1 xml2 z

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:py-gnome->=2.20.0:x11/gnome/py-gnome \
			::x11/gnome/bug-buddy
LIB_DEPENDS=		gtop-2.0::devel/libgtop2 \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui \
			rsvg-2.>=20::x11/gnome/librsvg \
			gnome-media-profiles::x11/gnome/media \
			metacity-private::x11/gnome/metacity \
			panel-applet-2::x11/gnome/panel \
			totem-plparser::x11/gnome/totem-pl-parser

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
