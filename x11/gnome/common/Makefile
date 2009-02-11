# $OpenBSD: Makefile,v 1.3 2009/02/11 15:33:51 jasper Exp $

COMMENT=		common automake macros for GNOME

GNOME_PROJECT=		gnome-common
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p0

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
