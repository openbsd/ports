# $OpenBSD: Makefile,v 1.3 2004/08/09 06:14:35 marcm Exp $

COMMENT=		"GNOME Application Libs"

VERSION=		2.1.13
DISTNAME=		gal-${VERSION}
PKGNAME=		gal2-${VERSION}
CATEGORIES=    		devel x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gal/2.1/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui

SEPARATE_BUILD= 	concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

API_VERSION=		2.2
SUBST_VARS=		VERSION API_VERSION

.include <bsd.port.mk>
