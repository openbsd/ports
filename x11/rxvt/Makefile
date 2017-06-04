# $OpenBSD: Makefile,v 1.53 2017/06/04 01:01:19 schwarze Exp $

COMMENT-main=	color, low memory usage, xterm replacement
COMMENT-clock=	analog clock for X11 w/appoint. reminder and mail notify

VER=		2.7.10
DISTNAME=	rxvt-${VER}
PKGNAME-main=	rxvt-${VER}
REVISION-main=	11
PKGNAME-clock=	rclock-${VER}
REVISION-clock=	4
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rxvt/} \
		ftp://ftp.fu-berlin.de/unix/X11/terms/rxvt/ \
		ftp://ftp.ics.es.osaka-u.ac.jp/pub/mirrors/rxvt/ \
		ftp://ftp.rxvt.org/pub/rxvt/

HOMEPAGE=	http://www.rxvt.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS-main =	devel/desktop-file-utils

WANTLIB=		X11 Xpm c
WANTLIB-main=		${WANTLIB} Xau Xdmcp pthread-stubs xcb

MULTI_PACKAGES=	-main -clock

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
			--enable-languages \
			--enable-menubar \
			--enable-rxvt-scroll \
			--with-encoding=noenc

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/rxvt.desktop ${PREFIX}/share/applications
	${INSTALL_MAN} ${WRKSRC}/doc/rxvt.tbl ${PREFIX}/man/man1/rxvt.1

.include <bsd.port.mk>
