# $OpenBSD: Makefile,v 1.16 2010/10/24 21:21:01 ajacoutot Exp $

COMMENT=	free MPEG-2 video stream decoder

DISTNAME=	libmpeg2-0.5.1
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	mpeg2		0.1 \
		mpeg2convert	0.0
CATEGORIES=	graphics x11
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://libmpeg2.sourceforge.net/

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xv c pthread-stubs xcb

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-sdl
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/.auto

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libmpeg2
	${INSTALL_DATA} ${WRKSRC}/doc/libmpeg2.txt \
	    ${PREFIX}/share/doc/libmpeg2
	${INSTALL_DATA} ${WRKSRC}/README \
	    ${PREFIX}/share/doc/libmpeg2

.include <bsd.port.mk>
