# $OpenBSD: Makefile,v 1.13 2011/11/22 15:31:48 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.2.90.20111007
REVISION=		2

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

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender asn1 atk-1.0 c cairo cairo-gobject
WANTLIB += camel-1.2 camel-provider-1.2 com_err crypto dbus-1
WANTLIB += ebook-1.2 ecal-1.2 edataserver-1.2 edataserverui-3.0
WANTLIB += enchant expat ffi fontconfig freetype gailutil-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gnome-keyring gobject-2.0 gpg-error gssapi gthread-2.0
WANTLIB += gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0 ical icalss icalvcal
WANTLIB += krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += smime3 soup-2.4 soup-gnome-2.4 sqlite3 ssl3 stdc++
WANTLIB += xcb xcb-render xcb-shm xml2 z dbus-glib-1 softokn3
WANTLIB += lib/evolution/${EVO_VERSION}/eshell
WANTLIB += lib/evolution/${EVO_VERSION}/eutil

MASTER_SITES=		http://gnome.eu.org/
EXTRACT_SUFX=		.tar.gz

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
AUTOMAKE_VERSION=	1.9
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

# XXX the desktop file is there for "News" category integration by other
# applications -- unfortunately, setting NoDisplay= or ShowOnlyIn= will
# make applications ignore it, but we don't want evolution-import-rss to
# appear in the menu since it takes an argument which we have no way to
# give -- so add NoDisplay anyway.
post-install:
	echo 'NoDisplay=true' >> \
		${PREFIX}/share/applications/evolution-rss.desktop

.include <bsd.port.mk>
