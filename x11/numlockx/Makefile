# $OpenBSD: Makefile,v 1.9 2013/05/26 09:30:55 kirby Exp $

COMMENT=		start X11 with NumLock turned on

DISTNAME=		numlockx-1.1
REVISION=		0
CATEGORIES=		x11

HOMEPAGE=		http://home.kde.org/~seli/numlockx/

MAINTAINER=		Thomas Delaet <thomas@delaet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext c

MASTER_SITES=		http://home.kde.org/~seli/numlockx/

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/numlockx
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/numlockx/

.include <bsd.port.mk>
