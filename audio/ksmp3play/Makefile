# $OpenBSD: Makefile,v 1.10 2004/11/21 17:51:45 espie Exp $

COMMENT=	"curses-based mp3 player"

DISTNAME=	ksmp3play-0.5.1
CATEGORIES=    	audio

HOMEPAGE=	http://www.xanadunet.net/ksmp3play/index.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c curses iberty m pthread usbhid

LIB_DEPENDS=	SDL::devel/sdl \
		smpeg.1.3:smpeg-*:devel/smpeg

MASTER_SITES=	http://www.xanadunet.net/ksmp3play/

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		LIBS="-liberty"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ksmp3play
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ksmp3play

.include <bsd.port.mk>
