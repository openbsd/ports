# $OpenBSD: Makefile,v 1.28 2006/08/04 00:10:42 espie Exp $

COMMENT=	"Window manager, continuation of the Bowman NeXTSTEP clone"

DISTNAME=	AfterStep-1.8.9
PKGNAME=	${DISTNAME:L}
CATEGORIES=     x11
MASTER_SITES=   ftp://ftp.afterstep.org/stable/

HOMEPAGE=	http://www.afterstep.org/

RUN_DEPENDS=	:asclock-*:x11/asclock,classic,english
LIB_DEPENDS=	png.>=2::graphics/png \
		jpeg.>=62::graphics/jpeg \
		rplay::audio/rplay

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL/LGPL/X11
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ICE SM X11 Xext Xpm c m z

FAKE=		lib
USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --enable-different-looknfeels
CONFIGURE_ARGS+= --with-helpcommand="xterm -e man"
CONFIGURE_ARGS+= --with-jpeg-includes=${DEPBASE}/include
CONFIGURE_ARGS+= --with-jpeg-library=${DEPBASE}/lib
CONFIGURE_ARGS+= --with-png-includes=${DEPBASE}/include/libpng
CONFIGURE_ARGS+= --with-png-library=${DEPBASE}/lib
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib" \
		CFLAGS="${CFLAGS} -fsigned-char"

NO_REGRESS=	Yes
		
post-install:
	${INSTALL_DATA} ${FILESDIR}/monitor_bsd.xpm ${PREFIX}/share/afterstep/desktop/icons/common

.include <bsd.port.mk>
