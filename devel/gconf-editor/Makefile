# $OpenBSD: Makefile,v 1.2 2004/06/23 03:23:48 marcm Exp $

COMMENT=		"editor for the GConf configuration system"

DISTNAME=		gconf-editor-2.6.2
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Balmer <marc@msys.ch>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gconf-editor/2.6/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig 
LIB_DEPENDS=		gconf-2::devel/gconf2

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
