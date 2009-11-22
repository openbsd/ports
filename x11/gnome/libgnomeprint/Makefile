# $OpenBSD: Makefile,v 1.33 2009/11/22 16:40:04 ajacoutot Exp $

COMMENT=		printing framework for GNOME

GNOME_PROJECT=		libgnomeprint
GNOME_VERSION=		2.18.6
PKGNAME=		${DISTNAME}p4

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
WANTLIB += krb5 m pcre pthread-stubs ssl xcb z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		:bison-*:devel/bison
LIB_DEPENDS=		pango-1.0.>=1300.0,pangoft2-1.0.>=1300.0::devel/pango \
			art_lgpl_2.>=5::graphics/libart \
			xml2.>=9::textproc/libxml \
			gnomecups-1.0.>=1::x11/gnome/libgnomecups

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-cups
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		VERSION

.include <bsd.port.mk>
