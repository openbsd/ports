# $OpenBSD: Makefile,v 1.10 2000/02/12 08:02:33 turan Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/08 20:59:19 steve Exp $

DISTNAME=	aterm-0.3.6
CATEGORIES=	x11
MASTER_SITES=	http://members.xoom.com/sashav/aterm/ \
		http://www.tigr.net/afterstep/as-apps/download/aterm/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

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
