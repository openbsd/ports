# $OpenBSD: Makefile,v 1.2 2003/02/18 19:11:39 marcm Exp $

COMMENT=		"GNOME control center"

VERSION=		2.0.3
DISTNAME=		control-center-${VERSION}
PKGNAME=		control-center2-${VERSION}
CATEGORIES=		x11 x11/gnome
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/control-center/2.0/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

LIB_DEPENDS=		gnomecanvas-2::x11/gnome/libgnomecanvas \
			gnome-desktop-2::x11/gnome/desktop

BUILD_DEPENDS=		:pkgconfig->=0.12.0p1:devel/pkgconfig
RUN_DEPENDS=		:gtk-engines2->=1.9.0:x11/gtk-engines2 \
			:xscreensaver-*:x11/xscreensaver,gtk2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=		GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/control-center2
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
