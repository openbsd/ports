# $OpenBSD: Makefile,v 1.5 2001/09/02 04:03:26 pvalchev Exp $

COMMENT=	"curses-based mp3 player"

DISTNAME=	ksmp3play-0.5.1
CATEGORIES=    	audio
NEED_VERSION=	1.433

HOMEPAGE=	http://www.xanadunet.net/ksmp3play/index.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	SDL.0.3:sdl-*:devel/sdl \
		smpeg.1.3:smpeg-*:devel/smpeg

MASTER_SITES=	http://www.xanadunet.net/ksmp3play/

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CC="${CC}" CFLAGS="${CFLAGS}" LIBS="-liberty"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ksmp3play
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ksmp3play

.include <bsd.port.mk>
