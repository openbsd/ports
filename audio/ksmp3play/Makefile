# $OpenBSD: Makefile,v 1.14 2006/10/18 17:55:19 pvalchev Exp $

COMMENT=	"curses-based mp3 player"

DISTNAME=	ksmp3play-0.5.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=    	audio

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses iberty m pthread

LIB_DEPENDS=	SDL::devel/sdl \
		smpeg.>=1.3:smpeg-*:devel/smpeg

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ksmp3play/}

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		LIBS="-liberty"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ksmp3play
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ksmp3play

.include <bsd.port.mk>
