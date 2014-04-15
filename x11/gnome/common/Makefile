# $OpenBSD: Makefile,v 1.19 2014/04/15 08:48:50 ajacoutot Exp $

COMMENT=	common automake macros for GNOME

GNOME_PROJECT=	gnome-common
GNOME_VERSION=	3.12.0
REVISION=	2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-common
	${INSTALL_DATA} ${WRKSRC}/doc/usage.txt ${PREFIX}/share/doc/gnome-common

.include <bsd.port.mk>
