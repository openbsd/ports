# $OpenBSD: Makefile,v 1.7 1999/08/30 14:27:54 brad Exp $

DISTNAME=	rxvt-2.6.1
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.rxvt.org/pub/rxvt/ \
		ftp://mason.primenet.com.au/pub/rxvt/ \
		http://wm.current.nu/files/ \
		ftp://ftp.nstu.ru/pub/sources/x/

MAINTAINER=	jasoni@openbsd.org

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --enable-xgetdefault

# Various compile time options you may want to configure.
#CONFIGURE_ARGS+= --enable-utmp \
#		--enable-wtmp \
#		--enable-menubar

.include <bsd.port.mk>
