# $OpenBSD: Makefile,v 1.12 2006/07/19 13:41:02 steven Exp $

COMMENT=	"curses-based mp3 player"

DISTNAME=	ksmp3play-0.5.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=    	audio

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c curses iberty m pthread usbhid

LIB_DEPENDS=	SDL::devel/sdl \
		smpeg.1.3:smpeg-*:devel/smpeg

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ksmp3play/}

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		LIBS="-liberty"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ksmp3play
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ksmp3play

.include <bsd.port.mk>
