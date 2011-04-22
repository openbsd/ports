# $OpenBSD: Makefile,v 1.29 2011/04/22 15:57:19 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		RSS-reader plugin for GNOME

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.2.90.20110422
PKGNAME=		evolution-plugin-rss-${GNOME_VERSION}

CATEGORIES=		mail

EVO_VERSION=		2.32
SUBST_VARS=		EVO_VERSION

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += asn1 atk-1.0 c cairo camel-1.2 camel-provider-1.2 com_err
WANTLIB += crypto dbus-1 dbus-glib-1 drm ebook-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 enchant execinfo expat fontconfig
WANTLIB += freetype gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-2 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += gtkhtml-3.14 gtkhtml-editor-3.14 krb5 m nspr4 nss3
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs smime3 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 ssl3 startup-notification-1
WANTLIB += stdc++ unique-1.0 xcb xcb-atom xcb-aux xcb-event xcb-render
WANTLIB += xcb-shm xml2 z lib/evolution/${EVO_VERSION}/eshell
WANTLIB += lib/evolution/${EVO_VERSION}/eutil

MASTER_SITES=		http://gnome.eu.org/
EXTRACT_SUFX=		.tar.gz

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		devel/libsoup,-gnome \
			mail/evolution

MODGCONF2_LIBDEP=	Yes
MODGCONF2_SCHEMAS_DIR=	evolution-rss

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

CONFIGURE_STYLE=	autoconf automake
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gecko \
			--disable-webkit \
			--with-primary-render=gtkhtml
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		itlocaledir="${PREFIX}/share/locale/"

# XXX remove this chunk when updating to a 'real' release
# (current tarball created from git)
MASTER_SITES=		http://distfiles.bsdfrog.org/
BUILD_DEPENDS +=	x11/gnome/common \
			${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}
USE_LIBTOOL=		gnu
CONFIGURE_STYLE=	# empty
do-configure:
	perl -pi -e 's,sed -i -e,perl -pi -e,g' ${WRKSRC}/src/Makefile.am
	echo "\nAC_PROG_LIBTOOL" >> ${WRKSRC}/configure.ac
	@cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		CONFIGURE_ENV=${CONFIGURE_ENV} \
		./autogen.sh ${CONFIGURE_ARGS} --disable-maintainer-mode
# end XXX

pre-configure:
	perl -pi -e 's,sed -i -e,perl -pi -e,g' ${WRKSRC}/src/Makefile.in

.include <bsd.port.mk>
