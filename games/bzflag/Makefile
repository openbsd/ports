# $OpenBSD: Makefile,v 1.24 2010/11/08 13:51:52 espie Exp $

COMMENT=	graphical multiplayer 3D tank war game

DISTNAME=	bzflag-2.0.16
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bzflag/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.bzflag.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

MODULES=	devel/gettext

LIB_DEPENDS=	::devel/sdl \
		::net/curl \
		::graphics/glew \
		::net/libcares
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

WANTLIB=	GL GLU ICE SM X11 Xau Xdmcp Xext Xrandr Xrender c \
		crypto idn m ncurses pthread-stubs pthread sndio \
		ssl stdc++ usbhid xcb z SDL.>=4 curl.>=3 GLEW cares

AUTOCONF_VERSION= 2.61
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --disable-ccachetest \
		 --with-glew
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_bind_gethostent=no
USE_GROFF =	Yes

pre-build:
	@perl -pi -e 's|\@LINUX_TRUE\@||g;' \
	    -e 's|\@LINUX_FALSE\@|#|g;' \
	    ${WRKSRC}/src/platform/Makefile.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@mv ${PREFIX}/share/bzflag/bzflag.desktop \
	    ${PREFIX}/share/applications

.include <bsd.port.mk>
