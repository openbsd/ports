# $OpenBSD: Makefile,v 1.5 2009/02/02 23:27:48 ajacoutot Exp $

COMMENT=	VNC server for real X displays

DISTNAME=	x11vnc-0.9.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=     x11

HOMEPAGE=	http://www.karlrunge.com/x11vnc/

MAINTAINER=	Craig Barraclough <craigba@creative.com.au>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext Xinerama Xtst c pthread z
WANTLIB+=	Xdamage Xfixes Xrandr crypto ssl

RUN_DEPENDS=	::devel/desktop-file-utils
LIB_DEPENDS=	jpeg::graphics/jpeg

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libvncserver/}

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=--with-x \
		--without-avahi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/x11vnc
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/x11vnc

.include <bsd.port.mk>
