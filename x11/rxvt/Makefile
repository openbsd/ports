# $OpenBSD: Makefile,v 1.16 2000/10/22 14:03:58 espie Exp $

DISTNAME=	rxvt-2.7.3
CATEGORIES=	x11
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.rxvt.org/pub/rxvt/ \
		ftp://mason.primenet.com.au/pub/rxvt/ 

HOMEPAGE=	http://www.rxvt.org/

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-utmp --enable-wtmp \
		--with-xpm --enable-xpm-background --enable-transparency \
		--enable-xgetdefault --enable-languages --enable-xim 

.include <bsd.port.mk>
