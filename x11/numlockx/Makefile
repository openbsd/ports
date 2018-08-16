# $OpenBSD: Makefile,v 1.11 2018/08/16 07:02:05 ajacoutot Exp $

COMMENT=		start X11 with NumLock turned on

DISTNAME =		numlockx-1.2
CATEGORIES=		x11

HOMEPAGE=		http://home.kde.org/~seli/numlockx/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext c

MASTER_SITES=		http://home.kde.org/~seli/numlockx/

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.63

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/numlockx
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/numlockx/

.include <bsd.port.mk>
