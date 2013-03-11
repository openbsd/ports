# $OpenBSD: Makefile,v 1.36 2013/03/11 10:50:06 espie Exp $

COMMENT=	collection of shared GSettings schemas

GNOME_PROJECT=	gsettings-desktop-schemas
GNOME_VERSION=	3.6.1
REVISION=	0

CATEGORIES=	devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome \
		devel/dconf

BUILD_DEPENDS=	devel/gettext

MODGNOME_TOOLS=	goi

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA} ${FILESDIR}/*.gschema.override \
		${PREFIX}/share/glib-2.0/schemas

.include <bsd.port.mk>
