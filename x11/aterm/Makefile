# $OpenBSD: Makefile,v 1.14 2000/03/31 21:35:48 espie Exp $
# $FreeBSD: Makefile,v 1.3 1999/03/08 20:59:19 steve Exp $

DISTNAME=	aterm-0.3.6
CATEGORIES=	x11
NEED_VERSION=	1.230
MASTER_SITES=	http://members.xoom.com/sashav/aterm/ \
		http://www.tigr.net/afterstep/as-apps/download/aterm/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.1.3::graphics/png

USE_X11=	Yes
GNU_CONFIGURE=	Yes
FAKE=		Yes
CONFIGURE_ARGS+=--enable-utmp --enable-wtmp \
		--with-xpm --enable-transparency \
		--enable-xgetdefault --enable-background-image \
		--enable-fading --with-jpeg --with-png

post-install:
	@chmod 4755 ${PREFIX}/bin/aterm

.include <bsd.port.mk>
