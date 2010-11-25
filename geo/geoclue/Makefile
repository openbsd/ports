# $OpenBSD: Makefile,v 1.7 2010/11/25 08:56:57 sebastia Exp $

COMMENT=		modular geoinformation service on top of D-Bus

DISTNAME=		geoclue-0.12.0
SHARED_LIBS +=  geoclue              1.0      # .0.0
CATEGORIES=		geo devel

HOMEPAGE=		http://geoclue.freedesktop.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://folks.o-hand.com/jku/geoclue-releases/

MODULES=		devel/gettext

WANTLIB += dbus-glib-1 tasn1 ORBit-2 c dbus-1 m soup-gnome-2.4
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += pcre pthread xml2 z gconf-2 gcrypt gnome-keyring gnutls
WANTLIB += gps>=19 sqlite3 soup-2.4 proxy gpg-error

LIB_DEPENDS =		devel/libsoup,-gnome \
			misc/gpsd

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gtk-doc=no
#CONFIGURE_ARGS+=	--enable-system-bus
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
