# $OpenBSD: Makefile,v 1.7 2011/04/28 13:49:38 jasper Exp $

COMMENT =	access web services that claim to be RESTful

V =		0.7.10
DISTNAME =	rest-$V
PKGNAME =	lib${DISTNAME}

CATEGORIES =	net devel

SHARED_LIBS +=	rest-0.7  	0.1
SHARED_LIBS +=	rest-extras-0.7 0.0

HOMEPAGE =	http://moblin.org/projects/librest

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_GNOME:=sources/rest/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX =		.tar.bz2

WANTLIB += dbus-1 gcrypt gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gthread-2.0 m pcre soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 xml2 z

MODULES =		devel/gettext
BUILD_DEPENDS = 	devel/gobject-introspection
LIB_DEPENDS =		devel/libsoup,-gnome

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-silent-rules \
			--with-gnome \
			--enable-introspection

.include <bsd.port.mk>
