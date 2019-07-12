# $OpenBSD: Makefile,v 1.30 2019/07/12 20:48:31 sthen Exp $

COMMENT =	access web services that claim to be RESTful

GNOME_VERSION =	0.8.1
GNOME_PROJECT =	rest
PKGNAME =	lib${DISTNAME}
REVISION =	0

CATEGORIES =	net devel

SHARED_LIBS +=	rest-0.7  	0.3
SHARED_LIBS +=	rest-extras-0.7 0.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl lzma m pcre pthread soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 xml2 z idn2 psl unistring

MODULES =		x11/gnome
MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS =		devel/libsoup

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-gnome \
			--with-ca-certificates=/etc/ssl/cert.pem

PORTHOME=		${WRKDIST}

.include <bsd.port.mk>
