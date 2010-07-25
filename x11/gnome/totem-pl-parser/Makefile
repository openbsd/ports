# $OpenBSD: Makefile,v 1.18 2010/07/25 08:15:33 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GObject-based parsing library

GNOME_PROJECT=	totem-pl-parser
GNOME_VERSION=	2.30.1

REVISION=	0

SHARED_LIBS +=	totem-plparser		3.0 # .17.0
SHARED_LIBS +=	totem-plparser-mini	3.0 # .17.0

CATEGORIES=	multimedia textproc

HOMEPAGE=	http://projects.gnome.org/totem/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre z gmime-2.4 xml2

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	:gmime->=2.4:mail/gmime24 \
		::textproc/libxml

CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--enable-introspection=no

.include <bsd.port.mk>
