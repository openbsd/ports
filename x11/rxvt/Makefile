# $OpenBSD: Makefile,v 1.9 1999/10/06 20:32:55 rohee Exp $

DISTNAME=	rxvt-2.6.1
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.rxvt.org/pub/rxvt/ \
		ftp://mason.primenet.com.au/pub/rxvt/ \
		http://wm.current.nu/files/ \
		ftp://ftp.nstu.ru/pub/sources/x/

MAINTAINER=	jasoni@openbsd.org

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--enable-xgetdefault --with-term=rxvt

# Various compile time options you may want to configure.
#CONFIGURE_ARGS+= --enable-utmp \
#		--enable-wtmp \
#		--enable-menubar

.include <bsd.port.mk>
