# $OpenBSD: Makefile,v 1.19 2010/10/19 08:13:59 espie Exp $

COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-0.1.12
CATEGORIES=	x11

REVISION=	0

HOMEPAGE=	http://pekwm.org/

MAINTAINER=	Nicholas Marriott <nicm@users.sourceforge.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext Xft Xpm Xrandr Xrender Xau Xdmcp \
		Xinerama expat z c fontconfig freetype m stdc++ \
		pthread-stubs xcb jpeg png

MODULES=	converters/libiconv

MASTER_SITES=	${HOMEPAGE}projects/pekwm/files/
LIB_DEPENDS=	::graphics/jpeg \
		::graphics/png

USE_X11= 	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-xinerama

post-install:
	@mv ${WRKINST}/etc/pekwm ${PREFIX}/share/examples

.include <bsd.port.mk>
