# $OpenBSD: Makefile,v 1.46 2014/05/13 15:54:04 ajacoutot Exp $

COMMENT=	collection of shared GSettings schemas

GNOME_PROJECT=	gsettings-desktop-schemas
GNOME_VERSION=	3.12.2

CATEGORIES=	devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/dconf \
		x11/gnome

BUILD_DEPENDS=	devel/gettext

MODGNOME_TOOLS=	gobject-introspection

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA} ${FILESDIR}/*.gschema.override \
		${PREFIX}/share/glib-2.0/schemas

.include <bsd.port.mk>
