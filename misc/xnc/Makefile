# $OpenBSD: Makefile,v 1.2 2001/03/16 18:03:51 wilfried Exp $

DISTNAME=	xnc-4.4.0
DISTFILES=      ${DISTNAME}.src${EXTRACT_SUFX}
CATEGORIES=	misc x11
NEED_VERSION=	1.348

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

HOMEPAGE=	http://xnc.dubna.su

MASTER_SITES=	${HOMEPAGE}/src/ 

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    jpeg.62.::graphics/jpeg \
                png.1.::graphics/png 

USE_X11=	Yes

CONFIGURE_STYLE=	gnu old

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib" 
CONFIGURE_ARGS=	--with-x --disable-plugins

XNLAUNCHFILES=	.launch.menu .xnlaunch.ini graphs.gif ives.gif kill.gif \
		map.gif netscape.gif term.gif tnet.gif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xnc
	cd ${WRKSRC}/.xlaunch && ${INSTALL_DATA} ${XNLAUNCHFILES} ${PREFIX}/share/examples/xnc

.include <bsd.port.mk>
