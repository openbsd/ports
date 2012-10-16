# $OpenBSD: Makefile,v 1.12 2012/10/16 08:36:04 jasper Exp $

COMMENT=	common automake macros for GNOME

GNOME_PROJECT=	gnome-common
GNOME_VERSION=	3.6.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-common
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnome-common

.include <bsd.port.mk>
