# $OpenBSD: Makefile,v 1.19 2013/10/26 08:02:57 ajacoutot Exp $

COMMENT =	access web services that claim to be RESTful

GNOME_VERSION =	0.7.90
GNOME_PROJECT =	rest
PKGNAME =	lib${DISTNAME}
REVISION =	2

CATEGORIES =	net devel

SHARED_LIBS +=	rest-0.7  	0.2
SHARED_LIBS +=	rest-extras-0.7 0.0

HOMEPAGE =	http://moblin.org/projects/librest

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre pthread soup-2.4 soup-gnome-2.4 sqlite3 xml2
WANTLIB += z

MODULES =		devel/gettext \
			x11/gnome
MODGNOME_TOOLS= 	gi

LIB_DEPENDS =		devel/libsoup

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-gnome \
			--with-ca-certificates=/etc/ssl/cert.pem

PORTHOME=		${WRKDIST}

.include <bsd.port.mk>
