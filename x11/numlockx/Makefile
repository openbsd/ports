# $OpenBSD: Makefile,v 1.8 2013/03/11 11:46:14 espie Exp $

COMMENT=		start X11 with NumLock turned on

DISTNAME=		numlockx-1.1
CATEGORIES=		x11

HOMEPAGE=		http://ktown.kde.org/~seli/numlockx/

MAINTAINER=		Thomas Delaet <thomas@delaet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext c

MASTER_SITES=	${HOMEPAGE}

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/numlockx
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/numlockx/

.include <bsd.port.mk>
