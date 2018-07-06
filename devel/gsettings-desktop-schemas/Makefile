# $OpenBSD: Makefile,v 1.61 2018/07/06 06:04:42 espie Exp $

COMMENT=		collection of shared GSettings schemas

GNOME_PROJECT=		gsettings-desktop-schemas
GNOME_VERSION=		3.28.0
REVISION=		0

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA} ${FILESDIR}/*.gschema.override \
		${PREFIX}/share/glib-2.0/schemas

.include <bsd.port.mk>
