# $OpenBSD: Makefile,v 1.112 2012/07/13 14:31:04 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		unified backend for PIM programs

GNOME_PROJECT=		evolution-data-server
GNOME_VERSION=		3.4.3
REVISION=		0

# Only get the first x.y which is needed in the PLIST.
R=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		R

CATEGORIES=		databases

SHARED_LIBS +=  camel-1.2            33.0     # 33.0
SHARED_LIBS +=  edataserver-1.2      16.0     # 16.0
SHARED_LIBS +=  ebackend-1.2         2.0      # 2.0
SHARED_LIBS +=  ebook-1.2            16.1     # 16.1
SHARED_LIBS +=  edata-book-1.2       13.0     # 13.0
SHARED_LIBS +=  ecal-1.2             13.2     # 13.2
SHARED_LIBS +=  edata-cal-1.2        15.0     # 15.0
SHARED_LIBS +=  edataserverui-3.0    1.0      # 1.0

HOMEPAGE=	http://www.gnome.org/projects/evolution/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm asn1 atk-1.0 c cairo
WANTLIB += cairo-gobject com_err crypto curl db dbus-1 dbus-glib-1
WANTLIB += drm expat ffi fontconfig freetype gconf-2 gcrypt gdata
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += goa-1.0 gobject-2.0 gpg-error gssapi gthread-2.0 gtk-3
WANTLIB += gweather-3 ical icalss icalvcal idn krb5 lber-2.4 ldap-2.4
WANTLIB += m nspr4 nss3 nssutil3 oauth pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += sasl2 smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += ssl ssl3 stdc++ xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/bison \
			devel/gperf
LIB_DEPENDS= 		databases/db/v4 \
			databases/openldap \
			net/liboauth \
			textproc/libical \
			x11/gnome/libgweather \
			devel/libgdata>=0.10.1 \
			x11/gnome/online-accounts

YACC=			bison

MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	addressbook/libebook/gen-western-table.py

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.9

MODGNOME_TOOLS= 	goi vala

CONFIGURE_STYLE= 	autoconf
CONFIGURE_ARGS=		--enable-ssl \
			--enable-smime \
			--enable-ipv6 \
			--enable-weather \
			--enable-nntp \
			--with-krb5 \
			--with-krb5-libs=/usr/lib \
			--with-krb5-includes=/usr/include/kerberosV \
			--with-libdb=${LOCALBASE} \
			--with-openldap=${LOCALBASE}
MODGNOME_CPPFLAGS=	-I${LOCALBASE}/include/db4
MODGNOME_LDFLAGS=	-pthread

.include <bsd.port.mk>
