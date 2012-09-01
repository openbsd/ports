# $OpenBSD: Makefile,v 1.73 2012/09/01 14:36:57 ajacoutot Exp $

COMMENT-main =		SOAP implementation in C
COMMENT-gnome =		GNOME specific libsoup parts

GNOME_PROJECT =		libsoup
GNOME_VERSION =		2.38.1

PKGNAME-main =		${DISTNAME}
PKGNAME-gnome =		${GNOME_PROJECT}-gnome-${GNOME_VERSION}

REVISION-main = 	0
REVISION-gnome =	1

SHARED_LIBS +=  soup-2.4             6.0      # 6.0
SHARED_LIBS +=  soup-gnome-2.4       6.0      # 6.0

API_VERSION =		2.4

CATEGORIES =		devel

HOMEPAGE =		http://live.gnome.org/LibSoup

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre xml2 z ffi

MULTI_PACKAGES =	-main -gnome

MODGNOME_TOOLS= 	goi

BUILD_DEPENDS =		net/glib2-networking>=2.31.22 \
			net/curl # needed to build tests
RUN_DEPENDS =		net/glib2-networking>=2.31.22

LIB_DEPENDS =		devel/glib2>=2.22.2 \
			textproc/libxml

WANTLIB-gnome =		${WANTLIB-main} dbus-1 sqlite3 \
			soup-2.4 gnome-keyring gcrypt gpg-error

RUN_DEPENDS-gnome=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-gnome =	${LIB_DEPENDS-main} \
			${BUILD_PKGPATH},-main \
			x11/gnome/libgnome-keyring>=3.4.0

MODULES =		devel/gettext \
			x11/gnome


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-more-warnings \
			--disable-tls-check
# checking Apache version... 1.3.29 (Unix) (ignoring)
# But this prevents needing apache2 for certain regress tests.
CONFIGURE_ARGS+=	--with-apache-httpd="/usr/sbin/httpd"

SUBST_VARS =		API_VERSION

.include <bsd.port.mk>
