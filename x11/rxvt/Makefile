# $OpenBSD: Makefile,v 1.12 2000/02/23 05:02:31 jasoni Exp $

DISTNAME=	rxvt-2.7.2
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.rxvt.org/pub/rxvt/ \
		ftp://mason.primenet.com.au/pub/rxvt/ 

MAINTAINER=	jasoni@openbsd.org

LICENSE_TYPE=           GNU
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+=--enable-utmp --enable-wtmp \
		--with-xpm --enable-xpm-background --enable-transparency \
		--enable-xgetdefault --enable-languages --enable-xim 

post-install:
	@chmod 4755 ${PREFIX}/bin/rxvt

.include <bsd.port.mk>
