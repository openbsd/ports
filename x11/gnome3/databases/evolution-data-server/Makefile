# $OpenBSD: Makefile,v 1.4 2011/05/28 08:15:53 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		unified backend for PIM programs

GNOME_PROJECT=		evolution-data-server
GNOME_VERSION=		3.0.2.1

REVISION=		0

CATEGORIES=		databases

SHARED_LIBS +=  edataserver-1.2      12.0     # 14.0
SHARED_LIBS +=  ebackend-1.2         2.0      # 1.0
SHARED_LIBS +=  egroupwise-1.2       15.0     # 13.1
SHARED_LIBS +=  camel-1.2            16.0     # 23.0
SHARED_LIBS +=  camel-provider-1.2   16.0     # 23.0
SHARED_LIBS +=  ebook-1.2            14.0     # 13.1
SHARED_LIBS +=  edata-book-1.2       8.0      # 9.0
SHARED_LIBS +=  ecal-1.2             11.0     # 10.2
SHARED_LIBS +=  edata-cal-1.2        8.0      # 11.0
SHARED_LIBS +=  edataserverui-3.0    0.0      # 0.0

HOMEPAGE=	http://www.gnome.org/projects/evolution/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm asn1
WANTLIB += atk-1.0 c cairo cairo-gobject com_err crypto db dbus-1
WANTLIB += drm expat fontconfig freetype gconf-2 gcrypt gdata
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gssapi gthread-2.0 gtk-3 gweather-3
WANTLIB += ical icalss icalvcal krb5 lber-2.4 ldap-2.4 m nspr4
WANTLIB += nss3 nssutil3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += sasl2 smime3 soup-2.4 soup-gnome-2.4 sqlite3 ssl ssl3
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/bison \
			devel/gperf \
			devel/gobject-introspection
LIB_DEPENDS= 		databases/db/v4 \
			databases/openldap \
			security/nss>=3.11.4p1 \
			textproc/libical \
			x11/gnome/libgweather \
			devel/libgdata>=0.8.0

YACC=			bison

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection \
			--enable-ssl \
			--enable-smime \
			--enable-ipv6 \
			--enable-weather \
			--enable-nntp \
			--with-nss-libs="${LOCALBASE}/lib" \
			--with-nss-includes="${LOCALBASE}/include/nss" \
			--with-nspr-libs=${LOCALBASE}/lib \
			--with-nspr-includes=${LOCALBASE}/include/nspr \
			--with-krb5 \
			--with-krb5-libs=/usr/lib \
			--with-krb5-includes=/usr/include/kerberosV \
			--with-libdb="${LOCALBASE}/lib" \
			--with-openldap=${LOCALBASE}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

# Only get the first x.y which is needed in the PLIST.
R=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		R

MODPY_ADJ_FILES=	addressbook/libebook/gen-western-table.py

.include <bsd.port.mk>
