# $OpenBSD: Makefile,v 1.13 2013/03/11 11:46:10 espie Exp $

COMMENT=	common automake macros for GNOME

GNOME_PROJECT=	gnome-common
GNOME_VERSION=	3.6.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-common
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnome-common

.include <bsd.port.mk>
