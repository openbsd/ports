# $OpenBSD: Makefile,v 1.1.1.1 1999/03/21 05:45:21 brad Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/08 20:59:19 steve Exp $

DISTNAME=	aterm-0.3.4
CATEGORIES=	x11
MASTER_SITES=	http://members.xoom.com/sashav/aterm/ \
		http://www.tigr.net/afterstep/as-apps/download/aterm/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	Xpm:${PORTSDIR}/graphics/xpm \
		jpeg:${PORTSDIR}/graphics/jpeg \
		png:${PORTSDIR/graphics/png

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-utmp --enable-wtmp \
		--enable-transparency --enable-background-image \
		--disable-delete-key --disable-backspace-key \
		--with-jpeg --with-png

MAN1=		aterm.1

.include <bsd.port.mk>
