# $OpenBSD: Makefile,v 1.41 2013/09/28 08:50:36 ajacoutot Exp $

COMMENT=	collection of shared GSettings schemas

GNOME_PROJECT=	gsettings-desktop-schemas
GNOME_VERSION=	3.10.0
REVISION=	0

CATEGORIES=	devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/dconf \
		x11/gnome

BUILD_DEPENDS=	devel/gettext

MODGNOME_TOOLS=	gi

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA} ${FILESDIR}/*.gschema.override \
		${PREFIX}/share/glib-2.0/schemas

.include <bsd.port.mk>
