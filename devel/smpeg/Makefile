# $OpenBSD: Makefile,v 1.7 2001/07/25 08:07:45 pvalchev Exp $

COMMENT=	"mpeg video player library with sound support"

VERSION=	0.4.4
DISTNAME=	smpeg-${VERSION}
CATEGORIES=	devel graphics
NEED_VERSION=	1.417

HOMEPAGE=       http://www.lokigames.com/development/smpeg.php3

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://sunsite.auc.dk/pub/os/linux/loki/%SUBDIR%/ \
		ftp://snuffleupagus.animearchive.org/loki/%SUBDIR%/ \
		ftp://ftp.linuxgames.com/pub/%SUBDIR%/
MASTER_SITE_SUBDIR= open-source/smpeg

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		SDL.0.3:sdl-*-!no_x11:devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	 LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-opengl-player

.include <bsd.port.mk>
