# $OpenBSD: Makefile,v 1.6 1999/10/31 18:57:37 brad Exp $

DISTNAME=	wterm-6.2.6
CATEGORIES=	x11
MASTER_SITES=	http://wm.current.nu/files/

MAINTAINER=	brad@openbsd.org

BUILD_DEPENDS=	wmaker:${PORTSDIR}/x11/windowmaker
RUN_DEPENDS=	wmaker:${PORTSDIR}/x11/windowmaker

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--enable-utmp --enable-wtmp \
		--with-xpm --enable-xpm-background --enable-transparency \
		--enable-xgetdefault
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/wterm ${PREFIX}/bin
	@chmod 4755 ${PREFIX}/bin/wterm

.include <bsd.port.mk>
