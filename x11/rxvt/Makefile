# $OpenBSD: Makefile,v 1.29 2003/05/30 11:18:02 naddy Exp $

COMMENT=	"color, low memory usage, xterm replacement"
COMMENT-clock=	"analog clock for X11 w/appoint. reminder and mail notif"

VER=		2.6.4
DISTNAME=	rxvt-${VER}
PKGNAME-clock=	rclock-${VER}
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.rxvt.org/pub/rxvt/ \
		ftp://ftp.ics.es.osaka-u.ac.jp/pub/mirrors/rxvt/ \
		ftp://ftp.fu-berlin.de/unix/X11/terms/rxvt

HOMEPAGE=	http://www.rxvt.org/

MAINTAINER=	Jason Ish <ish@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MULTI_PACKAGES=	-clock
SUBPACKAGE?=

USE_X11=		Yes
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
			--enable-ttygid

NO_REGRESS=		Yes

.include <bsd.port.mk>
