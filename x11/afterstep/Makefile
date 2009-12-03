# $OpenBSD: Makefile,v 1.31 2009/12/03 12:37:24 jasper Exp $

COMMENT=	window manager, continuation of the Bowman NeXTSTEP clone

DISTNAME=	AfterStep-1.8.9
PKGNAME=	${DISTNAME:L}p0
CATEGORIES=     x11
MASTER_SITES=   ftp://ftp.afterstep.org/stable/

HOMEPAGE=	http://www.afterstep.org/

RUN_DEPENDS=	:asclock-*:x11/asclock,classic,english
LIB_DEPENDS=	png.>=2::graphics/png \
		jpeg.>=62::graphics/jpeg \
		rplay::audio/rplay

# GPLv2/LGPLv2/X11
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += ICE SM X11 Xext Xpm c m z

FAKE=		lib
USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --enable-different-looknfeels \
		--with-helpcommand="xterm -e man" \
		--with-jpeg-includes=${DEPBASE}/include \
		--with-jpeg-library=${DEPBASE}/lib \
		--with-png-includes=${DEPBASE}/include/libpng \
		--with-png-library=${DEPBASE}/lib
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib" \
		CFLAGS="${CFLAGS} -fsigned-char"

NO_REGRESS=	Yes
		
post-install:
	${INSTALL_DATA} ${FILESDIR}/monitor_bsd.xpm \
		${PREFIX}/share/afterstep/desktop/icons/common

.include <bsd.port.mk>
