# $OpenBSD: Makefile,v 1.11 2000/01/18 08:27:01 kevlo Exp $

DISTNAME=	rxvt-2.7.2
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
		--enable-xgetdefault --enable-languages --enable-xim 

post-install:
	@chmod 4755 ${PREFIX}/bin/rxvt

.include <bsd.port.mk>
