# $OpenBSD: Makefile,v 1.27 2002/12/29 20:31:41 fgsch Exp $

COMMENT=	"color, low memory usage, xterm replacement"

DISTNAME=	rxvt-2.6.4
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

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/autoconf
CONFIGURE_ARGS=		--enable-utmp \
			--enable-wtmp \
			--with-xpm \
			--enable-xpm-background \
			--enable-transparency \
			--enable-xgetdefault \
			--enable-xim \
			--enable-mousewheel

NO_REGRESS=		Yes

.include <bsd.port.mk>
