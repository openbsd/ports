# $OpenBSD: Makefile,v 1.9 1999/10/31 18:52:41 brad Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/08 20:59:19 steve Exp $

DISTNAME=	aterm-0.3.6
CATEGORIES=	x11
MASTER_SITES=	http://members.xoom.com/sashav/aterm/ \
		http://www.tigr.net/afterstep/as-apps/download/aterm/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	jpeg.62:${PORTSDIR}/graphics/jpeg \
		png.1.3:${PORTSDIR/graphics/png

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--enable-utmp --enable-wtmp \
		--with-xpm --enable-transparency \
		--enable-xgetdefault --enable-background-image \
		--enable-fading --with-jpeg --with-png

post-install:
	@chmod 4755 ${PREFIX}/bin/aterm

.include <bsd.port.mk>
