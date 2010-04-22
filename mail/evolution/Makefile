# $OpenBSD: Makefile,v 1.98 2010/04/22 16:30:02 jasper Exp $

COMMENT-main=		integrated email and PIM software for GNOME
COMMENT-plugins=	additionnal plugins for evolution

GNOME_PROJECT=		evolution
GNOME_VERSION=		2.30.0.1

# Only get the first x.y which is needed in the PLIST.
# NOTE: when major version changes, increment EVO_VERSION accordingly 
# and bump:
# mail/evolution-plugin-rss
# mail/evolution-exchange
# x11/gnome/tracker
R=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		R

# -plugins depends on the exact version of -main, so whenever -main is
# bumped, -plugins needs a bump too
#PATCH_NUMBER=		p0
PKGNAME-main=		${DISTNAME}${PATCH_NUMBER}
PKGNAME-plugins=	evolution-plugins-${GNOME_VERSION}${PATCH_NUMBER}

CATEGORIES=		mail

HOMEPAGE=		http://www.gnome.org/projects/evolution/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

SO_VERSION=		6.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in eutil econduit evolution-a11y evolution-calendar-a11y \
evolution-widgets-a11y evolution-addressbook-a11y etable etext emiscwidgets \
efilterbar etimezonedialog menus eshell filter essmime evolution-smime eabutil \
evolution-addressbook-importers econtacteditor econtactlisteditor \
evolution-calendar-importers evolution-mail-importers evolution-cal-shared \
evolution-mail-shared emformat composer evolution-mail evolution-calendar \
evolution-mail-settings
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 asn1
WANTLIB += atk-1.0 c cairo com_err crypto dbus-1 dbus-glib-1
WANTLIB += eggdbus-1 enchant execinfo expat fontconfig freetype
WANTLIB += gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnome-keyring gnomecanvas-2
WANTLIB += gnutls gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += ical krb5 m nspr4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs sqlite3 startup-notification-1
WANTLIB += stdc++ tasn1 xcb xcb-atom xcb-aux xcb-event xcb-render
WANTLIB += xcb-render-util xml2 z


WANTLIB-main  = ${WANTLIB}
WANTLIB-main += db gweather icalss icalvcal ogg

WANTLIB-plugins  = ${WANTLIB}
WANTLIB-plugins += camel-1.2 camel-provider-1.2 ebook-1.2 ecal-1.2 edataserver-1.2
WANTLIB-plugins += edataserverui-1.2 gnome-desktop-2 gtkhtml-3.14 gtkhtml-editor
WANTLIB-plugins += notify nss3 smime3 soup-2.4 ssl3

MULTI_PACKAGES=		-main -plugins

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		::devel/bison \
			::misc/shared-mime-info \
			::x11/gnome/icon-theme \
			::devel/iso-codes

LIB_DEPENDS=		canberra::audio/libcanberra \
			unique-1.0::devel/libunique

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			::x11/hicolor-icon-theme \
			::x11/gnome/icon-theme
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			pst::converters/libpst \
			camel-1.2,camel-provider-1.2,ebackend-1.2,ebook-1.2,ecal-1.2,edataserver-1.2,edataserverui-1.2,egroupwise-1.2,gdata-1.2,gdata-google-1.2::databases/evolution-data-server \
			ldap.>=7::databases/openldap \
			notify.>=2::devel/libnotify \
			soup-2.4::devel/libsoup \
			gtkimageview::graphics/gtkimageview \
			nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss \
			gnome-desktop-2::x11/gnome/desktop \
			gtkhtml-3.14.>=1.0,gtkhtml-editor::www/gtkhtml3 \
			canberra-gtk::audio/libcanberra \
			vorbis,vorbisfile::audio/libvorbis \
			ltdl::devel/libtool,-ltdl

LIB_DEPENDS-plugins=	${LIB_DEPENDS} \
			gstreamer-0.10::multimedia/gstreamer-0.10/core \
			lib/evolution/${R}/emiscwidgets,lib/evolution/${R}/eutil:${PKGNAME-main}:mail/evolution,-main
# needed for the audio-inline plugin
RUN_DEPENDS-plugins=	::multimedia/gstreamer-0.10/plugins-good

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	evolution

YACC=			bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-pilot-conduits \
			--enable-nss=yes \
			--enable-smime=yes \
			--enable-plugins=all \
			--disable-mono \
			--with-openldap="${LOCALBASE}" \
			--with-sub-version=" OpenBSD/Ports" \
			--with-krb5=/usr \
			--with-krb5-includes=/usr/include/kerberosV \
			--disable-nm \
			--disable-python
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -Wl,-rpath,${TRUEPREFIX}/lib/evolution/${R}/components:${TRUEPREFIX}/lib/evolution/${R}:${TRUEPREFIX}/lib" \
			PTHREAD_LIB="-pthread"

# ltasneededhack in bsd.gnome.mk from FreeBSD ports
LIBTOOL=	${WRKDIR}/bin/libtool
post-patch:
	sed '/^archive_cmds=/s/-shared/-shared -Wl,--as-needed/ ; \
		/^archive_expsym_cmds=/s/-shared/-shared -Wl,--as-needed/' \
		${LOCALBASE}/bin/libtool > ${WRKDIR}/bin/libtool
	chmod +x ${WRKDIR}/bin/libtool

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/bogo-junk-plugin/bf-junk-filter.c \
		${WRKSRC}/plugins/sa-junk-plugin/em-junk-filter.c

post-install:
	find ${PREFIX}/share/evolution/${R}/default -perm 444 -exec chmod 644 {} \;

.include <bsd.port.mk>
