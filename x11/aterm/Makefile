# $OpenBSD: Makefile,v 1.2 1999/03/27 22:25:40 brad Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/08 20:59:19 steve Exp $

DISTNAME=	aterm-0.3.4
CATEGORIES=	x11
MASTER_SITES=	http://members.xoom.com/sashav/aterm/ \
		http://www.tigr.net/afterstep/as-apps/download/aterm/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	Xpm:${PORTSDIR}/graphics/xpm \
		jpeg:${PORTSDIR}/graphics/jpeg \
		png:${PORTSDIR/graphics/png

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --enable-transparency --enable-background-image \
		--with-jpeg --with-png

# Various compile time options you may want to configure.
#CONFIGURE_ARGS+= --enable-utmp \
#		--enable-wtmp \
#		--enable-xpm-background \
#		--enable-menubar

MAN1=		aterm.1

.include <bsd.port.mk>
