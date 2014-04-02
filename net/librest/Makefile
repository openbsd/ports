# $OpenBSD: Makefile,v 1.23 2014/04/02 09:36:11 jasper Exp $

COMMENT =	access web services that claim to be RESTful

GNOME_VERSION =	0.7.91
GNOME_PROJECT =	rest
PKGNAME =	lib${DISTNAME}

CATEGORIES =	net devel

SHARED_LIBS +=	rest-0.7  	0.2
SHARED_LIBS +=	rest-extras-0.7 0.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre pthread soup-2.4 soup-gnome-2.4 sqlite3 xml2
WANTLIB += z

MODULES =		devel/gettext \
			x11/gnome
MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS =		devel/libsoup

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-gnome \
			--with-ca-certificates=/etc/ssl/cert.pem

PORTHOME=		${WRKDIST}

.include <bsd.port.mk>
