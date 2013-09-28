# $OpenBSD: Makefile,v 1.15 2013/09/28 08:51:12 ajacoutot Exp $

COMMENT=	common automake macros for GNOME

GNOME_PROJECT=	gnome-common
GNOME_VERSION=	3.10.0
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-common
	${INSTALL_DATA} ${WRKSRC}/doc/usage.txt ${PREFIX}/share/doc/gnome-common

.include <bsd.port.mk>
