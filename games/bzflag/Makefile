# $OpenBSD: Makefile,v 1.15 2009/01/31 10:11:38 jakemsr Exp $

COMMENT=	graphical multiplayer 3D tank war game

DISTNAME=	bzflag-2.0.8
PKGNAME=	${DISTNAME}p5
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bzflag/}

HOMEPAGE=	http://www.bzflag.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

MODULES=	devel/gettext

LIB_DEPENDS=	SDL.>=4::devel/sdl \
		curl.>=3::net/curl

WANTLIB=	GL GLU ICE SM X11 Xau Xdmcp Xext Xrandr Xrender \
		c crypto idn m ncurses pthread sndio ssl stdc++ \
		usbhid z

AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=gnu autoconf
CONFIGURE_ARGS+=--enable-debug
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/include" \
		ac_cv_lib_cares_ares_init=no \
		ac_cv_lib_bind_gethostent=no

pre-build:
	@sed -e 's|@LINUX_TRUE@||g ; s|@LINUX_FALSE@|#|g' \
		${WRKSRC}/src/platform/Makefile.in > \
		${WRKSRC}/src/platform/Makefile.sed
	@mv ${WRKSRC}/src/platform/Makefile.sed \
		${WRKSRC}/src/platform/Makefile.in

.include <bsd.port.mk>
