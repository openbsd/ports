# $OpenBSD: Makefile,v 1.3 1999/06/09 01:54:12 brad Exp $

DISTNAME=	wterm-6.2.6
CATEGORIES=	x11
MASTER_SITES=	http://wm.current.nu/files/

MAINTAINER=	brad@openbsd.org

BUILD_DEPENDS=	wmaker:${PORTSDIR}/x11/windowmaker

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --enable-transparency --enable-xpm-background

# Various compile time options you may want to configure.
#CONFIGURE_ARGS+= --enable-utmp \
#		--enable-wtmp \
#		--enable-menubar

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/wterm ${PREFIX}/bin

.include <bsd.port.mk>
