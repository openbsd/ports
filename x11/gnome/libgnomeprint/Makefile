# $OpenBSD: Makefile,v 1.29 2009/04/10 16:19:13 ajacoutot Exp $

COMMENT=		printing framework for GNOME

GNOME_PROJECT=		libgnomeprint
GNOME_VERSION=		2.18.6
PKGNAME=		${DISTNAME}p0

SHARED_LIBS +=	gnomeprint-2-2 2.1            # .1.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/projects/gnome-print/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp cups expat fontconfig freetype gcrypt
WANTLIB += glib-2.0 gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0
WANTLIB += m pcre tasn1 z

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
