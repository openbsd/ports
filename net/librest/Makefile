# $OpenBSD: Makefile,v 1.2 2009/10/11 10:34:11 landry Exp $

COMMENT =	access web services that claim to be RESTful

VERSION =	0.6
DISTNAME =	rest-${VERSION}
PKGNAME =	librest-${VERSION}p0

CATEGORIES =	net devel

SHARED_LIBS =	rest  0.0

HOMEPAGE =	http://moblin.org/projects/librest
MASTER_SITES =	http://moblin.org/sites/all/files/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =	Yes

# not really needed yet, see rest/rest-proxy.c
CONFIGURE_ARGS =	--without-gnome

MODULES =	devel/gettext
LIB_DEPENDS =	soup-2.4::devel/libsoup

WANTLIB += gcrypt gio-2.0 glib-2.0 gmodule-2.0 gnutls gobject-2.0
WANTLIB += gpg-error gthread-2.0 m pcre tasn1 xml2 z

.include <bsd.port.mk>
