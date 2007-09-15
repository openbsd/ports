# $OpenBSD: Makefile,v 1.3 2007/09/15 20:04:23 merdely Exp $

COMMENT=		start X11 with NumLock turned on

DISTNAME=		numlockx-1.0
CATEGORIES=		x11	

HOMEPAGE=		http://ktown.kde.org/~seli/numlockx/	

MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c

MASTER_SITES=	http://caraldi.com/jbq/numlockx/ \
		${HOMEPAGE}

SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	gnu
USE_X11=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/numlockx
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/numlockx/

.include <bsd.port.mk>
