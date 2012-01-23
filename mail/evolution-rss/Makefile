# $OpenBSD: Makefile,v 1.16 2012/01/23 07:56:15 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.90

CATEGORIES=		mail

EVO_VERSION=		3.2
SUBST_VARS=		EVO_VERSION

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm asn1
WANTLIB += atk-1.0 c cairo cairo-gobject camel-1.2 camel-provider-1.2
WANTLIB += com_err crypto db dbus-1 dbus-glib-1 drm ebackend-1.2
WANTLIB += ebook-1.2 ecal-1.2 edataserver-1.2 edataserverui-3.0
WANTLIB += enchant expat ffi fontconfig freetype gailutil-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gnome-keyring gobject-2.0 gpg-error gssapi gthread-2.0
WANTLIB += gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0 ical icalss icalvcal
WANTLIB += krb5 m nspr4 nss3 nssutil3 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl3
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 z
WANTLIB += lib/evolution/${EVO_VERSION}/emiscwidgets
WANTLIB += lib/evolution/${EVO_VERSION}/eshell
WANTLIB += lib/evolution/${EVO_VERSION}/etable
WANTLIB += lib/evolution/${EVO_VERSION}/etext
WANTLIB += lib/evolution/${EVO_VERSION}/eutil
WANTLIB += lib/evolution/${EVO_VERSION}/evolution-a11y
WANTLIB += lib/evolution/${EVO_VERSION}/filter
WANTLIB += lib/evolution/${EVO_VERSION}/gnomecanvas
WANTLIB += lib/evolution/${EVO_VERSION}/menus

MASTER_SITES=		http://gnome.eu.org/

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		devel/libsoup,-gnome \
			mail/evolution,-main>=3.2.1

MODGNOME_DESKTOP_FILE=		Yes
MODGCONF2_SCHEMAS_DIR=	evolution-rss

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--disable-gecko \
			--disable-webkit \
			--with-primary-render=gtkhtml

### XXX remove this chunk when updating to a 'real' release ############
MASTER_SITES=		http://distfiles.bsdfrog.org/

BUILD_DEPENDS +=	x11/gnome/common \
			devel/autoconf/${AUTOCONF_VERSION} \
			devel/automake/${AUTOMAKE_VERSION} \
			devel/libtool

AUTOCONF_VERSION=	2.65
AUTOMAKE_VERSION=	1.11
CONFIGURE_STYLE=	# empty

do-configure:
	perl -pi -e 's,sed -i -e,perl -pi -e,g' ${WRKSRC}/src/Makefile.am
	echo "\nAC_PROG_LIBTOOL" >> ${WRKSRC}/configure.ac
	@cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		${CONFIGURE_ENV} \
		./autogen.sh ${CONFIGURE_ARGS} --disable-maintainer-mode \
			--disable-silent-rules --enable-shared
### end XXX ############################################################

#pre-configure:
#	perl -pi -e 's,sed -i -e,perl -pi -e,g' ${WRKSRC}/src/Makefile.in

.include <bsd.port.mk>
