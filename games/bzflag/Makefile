# $OpenBSD: Makefile,v 1.27 2011/09/22 23:08:49 jasper Exp $

COMMENT=	graphical multiplayer 3D tank war game

DISTNAME=	bzflag-2.4.0
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bzflag/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.bzflag.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += GL GLEW GLU ICE SDL SM X11 Xdamage Xext Xfixes Xi Xmu
WANTLIB += Xt Xxf86vm c cares crypto drm idn m ncurses pthread
WANTLIB += sndio ssl stdc++ usbhid xcb z curl

MODULES=	devel/gettext
LIB_DEPENDS=	devel/sdl \
		graphics/glew \
		net/curl \
		net/libcares
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF=	Yes
AUTOCONF_VERSION= 2.67
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --disable-ccachetest \
		 --with-glew
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_bind_gethostent=no

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@mv ${PREFIX}/share/bzflag/bzflag.desktop \
	    ${PREFIX}/share/applications

.include <bsd.port.mk>
