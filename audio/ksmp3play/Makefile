# $OpenBSD: Makefile,v 1.25 2013/11/16 12:10:13 naddy Exp $

COMMENT=	curses-based mp3 player

DISTNAME=	ksmp3play-0.5.1
REVISION=	4
CATEGORIES=    	audio

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL c curses iberty m pthread smpeg>=1.3

LIB_DEPENDS=	devel/sdl \
		devel/smpeg

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ksmp3play/}

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		LIBS="-liberty"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ksmp3play
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ksmp3play

.include <bsd.port.mk>
