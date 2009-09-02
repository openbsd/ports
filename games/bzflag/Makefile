# $OpenBSD: Makefile,v 1.18 2009/09/02 08:52:22 sthen Exp $

# crashes the X server in some configurations on macppc
NOT_FOR_ARCHS=	powerpc

COMMENT=	graphical multiplayer 3D tank war game

DISTNAME=	bzflag-2.0.12
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
		GLEW::graphics/glew \
		cares::net/libcares
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

WANTLIB=	GL GLU ICE SM X11 Xau Xdmcp Xext Xrandr Xrender c \
		crypto idn m ncurses pthread-stubs pthread sndio \
		ssl stdc++ usbhid xcb z

AUTOCONF_VERSION= 2.61
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --disable-ccachetest \
		 --with-glew
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_bind_gethostent=no

pre-build:
	@perl -pi -e 's|\@LINUX_TRUE\@||g;' \
	    -e 's|\@LINUX_FALSE\@|#|g;' \
	    ${WRKSRC}/src/platform/Makefile.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@mv ${PREFIX}/share/bzflag/bzflag.desktop \
	    ${PREFIX}/share/applications

.include <bsd.port.mk>
