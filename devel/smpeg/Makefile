# $OpenBSD: Makefile,v 1.2 2001/05/09 23:26:20 pvalchev Exp $

COMMENT=	"mpeg video player library with sound support"

VER=		0.4.3
DISTNAME=	smpeg-${VER}
CATEGORIES=	devel graphics
NEED_VERSION=	1.397

HOMEPAGE=       http://www.lokigames.com/development/smpeg.php3

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.linuxgames.com/pub/${SMPEG_DIR} \
		ftp://sunsite.auc.dk/pub/os/linux/loki/${SMPEG_DIR} \
		ftp://boudicca.tux.org/misc/lokigames/${SMPEG_DIR} \
		ftp://snuffleupagus.animearchive.org/loki/${SMPEG_DIR} \
		http://ftp.gameaholic.com/mirrors/ftp.lokigames.com/${SMPEG_DIR}
SMPEG_DIR=	open-source/smpeg/

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		SDL.:sdl-*-!no_x11:devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	 LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-opengl-player

.include <bsd.port.mk>
