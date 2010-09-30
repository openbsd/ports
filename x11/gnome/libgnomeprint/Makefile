# $OpenBSD: Makefile,v 1.36 2010/09/30 07:43:36 ajacoutot Exp $

COMMENT=		printing framework for GNOME

GNOME_PROJECT=		libgnomeprint
GNOME_VERSION=		2.18.8

SHARED_LIBS +=	gnomeprint-2-2 2.1            # .1.0

CATEGORIES=		devel

HOMEPAGE=		http://projects.gnome.org/gnome-print/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp asn1 crypto cups expat fontconfig freetype
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gssapi gthread-2.0
WANTLIB += krb5 m pcre pthread-stubs ssl xcb z pango-1.0 pangoft2-1.0
WANTLIB += art_lgpl_2 xml2 gnomecups-1.0

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::devel/bison
LIB_DEPENDS=		::devel/pango \
			::graphics/libart \
			::textproc/libxml \
			::x11/gnome/libgnomecups

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--with-cups
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		VERSION

.include <bsd.port.mk>
