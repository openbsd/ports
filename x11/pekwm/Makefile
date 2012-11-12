# $OpenBSD: Makefile,v 1.22 2012/11/12 10:03:21 jasper Exp $

COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-0.1.15
CATEGORIES=	x11

HOMEPAGE=	http://pekwm.org/

MAINTAINER=	Nicholas Marriott <nicm@users.sourceforge.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xrandr c jpeg m png
WANTLIB += stdc++ z

MODULES=	converters/libiconv

MASTER_SITES=	${HOMEPAGE}projects/pekwm/files/
EXTRACT_SUFX=	.tar.bz2
LIB_DEPENDS=	graphics/jpeg \
		graphics/png

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
