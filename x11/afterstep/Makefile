# $OpenBSD: Makefile,v 1.21 2002/10/29 19:48:57 naddy Exp $

COMMENT=	"Window manager, continuation of the Bowman NeXTSTEP clone"

DISTNAME=	AfterStep-1.8.9
PKGNAME=	${DISTNAME:L}
CATEGORIES=     x11
MASTER_SITES=   ftp://ftp.afterstep.org/stable/

HOMEPAGE=	http://www.afterstep.org/

RUN_DEPENDS=	::x11/asclock
LIB_DEPENDS=	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		rplay.::audio/rplay

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --enable-different-looknfeels
CONFIGURE_ARGS+= --with-helpcommand="xterm -e man"
CONFIGURE_ARGS+= --with-jpeg-includes=${LOCALBASE}/include
CONFIGURE_ARGS+= --with-jpeg-library=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-png-includes=${LOCALBASE}/include/libpng
CONFIGURE_ARGS+= --with-png-library=${LOCALBASE}/lib
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes
		
post-install:
	${INSTALL_DATA} ${FILESDIR}/monitor_bsd.xpm ${PREFIX}/share/afterstep/desktop/icons/common

.include <bsd.port.mk>
