# $OpenBSD: Makefile,v 1.1.1.1 2008/03/15 09:29:46 jasper Exp $

COMMENT=		common automake macros for GNOME 2

GNOME_PROJECT=		gnome-common
GNOME_VERSION=		2.20.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-common
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnome-common

.include <bsd.port.mk>
