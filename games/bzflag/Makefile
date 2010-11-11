# $OpenBSD: Makefile,v 1.25 2010/11/11 12:43:26 dcoppa Exp $

COMMENT=	graphical multiplayer 3D tank war game

DISTNAME=	bzflag-2.0.16
REVISION=	0
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bzflag/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.bzflag.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=	GL GLEW GLU ICE SDL SM X11 Xau Xdmcp Xext Xrandr Xrender \
		c cares crypto curl idn m ncurses pthread-stubs pthread \
		sndio ssl stdc++ usbhid xcb z

MODULES=	devel/gettext
LIB_DEPENDS=	::devel/sdl \
		::graphics/glew \
		::net/curl \
		::net/libcares
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF=	Yes
AUTOCONF_VERSION= 2.61
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
