# $OpenBSD: Makefile,v 1.19 2001/06/22 20:51:18 jasoni Exp $

COMMENT=	"color, low memory usage, xterm replacement"

DISTNAME=	rxvt-2.7.6
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

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--enable-utmp \
			--enable-wtmp \
			--with-xpm \
			--enable-xpm-background \
			--enable-transparency \
			--enable-xgetdefault \
			--enable-languages \
			--enable-xim \
			--enable-rxvt-scroll \
			--enable-mousewheel

.include <bsd.port.mk>
