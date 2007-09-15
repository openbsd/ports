# $OpenBSD: Makefile,v 1.2 2007/09/15 20:04:26 merdely Exp $

COMMENT=	VNC server for real X displays

VERSION=	0.6.2
DISTNAME=	x11vnc-${VERSION}
CATEGORIES=     x11

HOMEPAGE=	http://www.karlrunge.com/x11vnc/

MAINTAINER=	Craig Barraclough <craigba@creative.com.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext Xinerama Xtst c pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libvncserver/}

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-x

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/x11vnc
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/x11vnc

.include <bsd.port.mk>
