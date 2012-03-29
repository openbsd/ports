# $OpenBSD: Makefile,v 1.14 2012/03/29 15:00:19 ajacoutot Exp $

COMMENT=		modular geoinformation service on top of D-Bus

DISTNAME=		geoclue-0.12.0
SHARED_LIBS +=  geoclue              1.0      # .0.0
CATEGORIES=		geo devel

REVISION=		4

HOMEPAGE=		http://geoclue.freedesktop.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c dbus-1 dbus-glib-1 ffi gconf-2 gcrypt gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error gps
WANTLIB += gthread-2.0 m pcre pthread soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 xml2 z

MASTER_SITES=		http://folks.o-hand.com/jku/geoclue-releases/ \
			http://distfiles.nl/

MODULES=		devel/gettext

LIB_DEPENDS =		devel/libsoup,-gnome \
			misc/gpsd \
			x11/dbus-glib \
			devel/gconf2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

# for xsltproc
BUILD_DEPENDS =		textproc/libxslt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gtk-doc=no
#CONFIGURE_ARGS+=	--enable-system-bus
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
