# $OpenBSD: Makefile,v 1.35 2009/10/05 14:12:21 landry Exp $

COMMENT-main =	SOAP implementation in C
COMMENT-gnome =	GNOME specific libsoup parts

GNOME_PROJECT =		libsoup
GNOME_VERSION =		2.28.0
PKGNAME-main =		${DISTNAME}
PKGNAME-gnome =		${GNOME_PROJECT}-gnome-${GNOME_VERSION}
SHARED_LIBS +=		soup-2.4	2.0 \
			soup-gnome-2.4	1.1	# .4.0
API_VERSION =		2.4
CATEGORIES =		devel
HOMEPAGE =		http://live.gnome.org/LibSoup

MULTI_PACKAGES =	-main -gnome

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB =		gcrypt gpg-error m pcre tasn1 z

LIB_DEPENDS =		gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			gnutls.>=12::security/gnutls \
			xml2.>=7::textproc/libxml

WANTLIB-gnome =		${WANTLIB-main} ORBit-2 dbus-1 dbus-glib-1 sqlite3

LIB_DEPENDS-gnome =	${LIB_DEPENDS-main} \
			soup-2.4::${BUILD_PKGPATH},-main \
			gnome-keyring::x11/gnome/keyring \
			gconf-2::devel/gconf2 \
			proxy::net/libproxy

MODULES =		devel/gettext \
			x11/gnome

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-ssl \
			--disable-more-warnings \
			--disable-gtk-doc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS =		API_VERSION

NO_REGRESS =		Yes

.include <bsd.port.mk>
