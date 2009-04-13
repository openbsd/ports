# $OpenBSD: Makefile,v 1.16 2009/04/13 23:29:44 sthen Exp $

COMMENT=	graphical multiplayer 3D tank war game

DISTNAME=	bzflag-2.0.8
PKGNAME=	${DISTNAME}p6
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
		curl.>=3::net/curl \
		GLEW::graphics/glew

WANTLIB=	GL GLU ICE SM X11 Xau Xdmcp Xext Xrandr Xrender \
		c crypto idn m ncurses pthread sndio ssl stdc++ \
		usbhid z

AUTOCONF_VERSION=2.59
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+=--enable-debug
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_cares_ares_init=no \
		ac_cv_lib_bind_gethostent=no

pre-build:
	@sed -e 's|@LINUX_TRUE@||g ; s|@LINUX_FALSE@|#|g' \
		${WRKSRC}/src/platform/Makefile.in > \
		${WRKSRC}/src/platform/Makefile.sed
	@mv ${WRKSRC}/src/platform/Makefile.sed \
		${WRKSRC}/src/platform/Makefile.in

.include <bsd.port.mk>
