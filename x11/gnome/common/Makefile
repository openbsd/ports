# $OpenBSD: Makefile,v 1.14 2013/09/26 07:53:19 jasper Exp $

COMMENT=	common automake macros for GNOME

GNOME_PROJECT=	gnome-common
GNOME_VERSION=	3.10.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-common
	${INSTALL_DATA} ${WRKSRC}/doc/usage.txt ${PREFIX}/share/doc/gnome-common

.include <bsd.port.mk>
