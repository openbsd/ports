# $OpenBSD: Makefile,v 1.2 2004/01/28 16:09:30 marcm Exp $

COMMENT=		"user interface components for libgnomeprint"

DISTNAME=		libgnomeprintui-2.4.2
CATEGORIES=		x11/gnome devel

HOMEPAGE=		http://www.gnome.org/projects/gnome-print/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnomeprintui/2.4/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

BUILD_DEPENDS=		:pkgconfig->=0.12.0p1:devel/pkgconfig \
			:libglade2->=2.0.0:devel/libglade2
LIB_DEPENDS=		gnomecanvas-2::x11/gnome/libgnomecanvas \
			gnomeprint-2-2::x11/gnome/libgnomeprint

SEPARATE_BUILD= 	concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
