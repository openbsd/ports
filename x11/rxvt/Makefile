# $OpenBSD: Makefile,v 1.40 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT-main=	color, low memory usage, xterm replacement
COMMENT-clock=	analog clock for X11 w/appoint. reminder and mail notif

VER=		2.7.10
DISTNAME=	rxvt-${VER}
PKGNAME-main=	rxvt-${VER}p4
PKGNAME-clock=	rclock-${VER}p0
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rxvt/} \
		ftp://ftp.fu-berlin.de/unix/X11/terms/rxvt/ \
		ftp://ftp.ics.es.osaka-u.ac.jp/pub/mirrors/rxvt/ \
		ftp://ftp.rxvt.org/pub/rxvt/

HOMEPAGE=	http://www.rxvt.org/

MAINTAINER=	Jason Ish <ish@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xpm c
WANTLIB-main=		${WANTLIB} Xau Xdmcp pthread-stubs xcb

MULTI_PACKAGES=	-main -clock

USE_X11=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-shared
CONFIGURE_STYLE= 	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/autoconf
CONFIGURE_ARGS=		--enable-utmp \
			--enable-wtmp \
			--with-xpm \
			--enable-xpm-background \
			--enable-transparency \
			--enable-xgetdefault \
			--enable-xim \
			--enable-mousewheel \
			--enable-ttygid \
			--enable-languages \
			--enable-menubar \
			--enable-rxvt-scroll \
			--with-encoding=noenc

NO_REGRESS=		Yes

.include <bsd.port.mk>
