# $OpenBSD: Makefile,v 1.6 1999/05/08 17:45:10 brad Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/08 20:59:19 steve Exp $

DISTNAME=	aterm-0.3.5
CATEGORIES=	x11
MASTER_SITES=	http://members.xoom.com/sashav/aterm/ \
		http://www.tigr.net/afterstep/as-apps/download/aterm/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	jpeg.62:${PORTSDIR}/graphics/jpeg \
		png.1.3:${PORTSDIR/graphics/png

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --enable-transparency --enable-background-image \
		--with-jpeg --with-png

# Various compile time options you may want to configure.
#CONFIGURE_ARGS+= --enable-utmp \
#		--enable-wtmp \
#		--enable-menubar

.include <bsd.port.mk>
