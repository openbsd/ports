# $OpenBSD: Makefile,v 1.56 2016/05/26 17:31:28 ajacoutot Exp $

COMMENT=		collection of shared GSettings schemas

GNOME_PROJECT=		gsettings-desktop-schemas
GNOME_VERSION=		3.20.0
REVISION=		1

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
