# $OpenBSD: Makefile,v 1.17 2004/11/24 00:11:04 espie Exp $

COMMENT=	"mpeg video player library with sound support"

VERSION=	0.4.4
DISTNAME=	smpeg-${VERSION}
CATEGORIES=	devel graphics

HOMEPAGE=       http://www.lokigames.com/development/smpeg.php3

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m pthread usbhid

MASTER_SITES=	ftp://ftp.lokigames.com/pub/open-source/smpeg/ \
		ftp://sunsite.auc.dk/pub/os/linux/loki/open-source/smpeg/ \
		ftp://snuffleupagus.animearchive.org/loki/open-source/smpeg/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		SDL::devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	 LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-opengl-player

.include <bsd.own.mk>
USE_GCC3?=No
.if ${USE_GCC3:L} == "yes"
MAKE_FLAGS+=libsmpeg_la_LIBADD="audio/libaudio.la video/libvideo.la -lsupc++"
.endif

post-install:
	${INSTALL_MAN} ${FILESDIR}/smpeg.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
