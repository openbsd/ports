# $OpenBSD: Makefile,v 1.85 2013/10/15 14:57:00 ajacoutot Exp $

COMMENT-main =		SOAP implementation in C
COMMENT-gnome =		GNOME specific libsoup parts

GNOME_PROJECT =		libsoup
GNOME_VERSION =		2.44.1

PKGNAME-main =		${DISTNAME}
PKGNAME-gnome =		${GNOME_PROJECT}-gnome-${GNOME_VERSION}

SHARED_LIBS +=  soup-2.4             8.0      # 8.0
SHARED_LIBS +=  soup-gnome-2.4       8.0      # 8.0

API_VERSION =		2.4

CATEGORIES =		devel www

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre
WANTLIB += xml2 z ffi pthread sqlite3

MULTI_PACKAGES =	-main -gnome

MODGNOME_TOOLS= 	gi

BUILD_DEPENDS =		net/glib2-networking \
			net/curl #needed to build tests
RUN_DEPENDS =		net/glib2-networking

LIB_DEPENDS =		devel/glib2 \
			textproc/libxml

WANTLIB-gnome =		${WANTLIB-main} soup-2.4

RUN_DEPENDS-gnome=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-gnome =	${LIB_DEPENDS-main} \
			${BUILD_PKGPATH},-main=${GNOME_VERSION}

MODULES =		devel/gettext \
			lang/python \
			x11/gnome


MODPY_ADJ_FILES =	libsoup/tld-parser.py
MODPY_RUNDEP =		No

CONFIGURE_STYLE =	gnu

# checking Apache version... 1.3.29 (Unix) (ignoring)
# But this prevents needing apache2 for certain regress tests.
CONFIGURE_ARGS+=	--with-apache-httpd="/usr/sbin/httpd"

SUBST_VARS =		API_VERSION

.include <bsd.port.mk>
