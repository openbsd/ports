# $OpenBSD: Makefile,v 1.18 2001/04/07 19:44:19 jasoni Exp $

COMMENT=	"color, low memory usage, xterm replacement"

DISTNAME=	rxvt-2.7.3
CATEGORIES=	x11
NEED_VERSION=	1.363
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
