# $OpenBSD: Makefile,v 1.10 1999/10/31 18:47:40 brad Exp $

DISTNAME=	rxvt-2.6.1
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.rxvt.org/pub/rxvt/ \
		ftp://mason.primenet.com.au/pub/rxvt/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= X11/terms

MAINTAINER=	jasoni@openbsd.org

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--enable-utmp --enable-wtmp \
		--with-xpm --enable-xpm-background --enable-transparency \
		--enable-xgetdefault --with-term="rxvt"

post-install:
	@chmod 4755 ${PREFIX}/bin/rxvt

.include <bsd.port.mk>
