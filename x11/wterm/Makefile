# $OpenBSD: Makefile,v 1.1.1.1 1999/03/28 02:01:06 brad Exp $

DISTNAME=	wterm-6.2.6
CATEGORIES=	x11
MASTER_SITES=	http://wm.current.nu/files/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	Xpm:${PORTSDIR}/graphics/xpm

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --enable-transparency --enable-xpm-background

# Various compile time options you may want to configure.
#CONFIGURE_ARGS+= --enable-utmp \
#		--enable-wtmp \
#		--enable-menubar

CONFIGURE_ENV=	CPPFLAGS="-I/usr/local/include" \
		LDFLAGS="-L/usr/local/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/wterm ${PREFIX}/bin

.include <bsd.port.mk>
