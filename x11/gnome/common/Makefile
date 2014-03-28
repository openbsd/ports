# $OpenBSD: Makefile,v 1.17 2014/03/28 12:33:10 jasper Exp $

COMMENT=	common automake macros for GNOME

GNOME_PROJECT=	gnome-common
GNOME_VERSION=	3.12.0
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-common
	${INSTALL_DATA} ${WRKSRC}/doc/usage.txt ${PREFIX}/share/doc/gnome-common

.include <bsd.port.mk>
