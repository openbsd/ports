# $OpenBSD: Makefile,v 1.24 2013/03/10 22:55:03 espie Exp $

COMMENT=	curses-based mp3 player

DISTNAME=	ksmp3play-0.5.1
REVISION=	3
CATEGORIES=    	audio

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL c curses iberty m pthread smpeg>=1.3

LIB_DEPENDS=	devel/sdl \
		devel/smpeg

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ksmp3play/}

USE_GROFF =	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		LIBS="-liberty"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ksmp3play
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ksmp3play

.include <bsd.port.mk>
