# $OpenBSD: Makefile,v 1.4 2010/10/18 18:36:47 espie Exp $

COMMENT=	Gadu-Gadu IM protocol client

DISTNAME=	ekg-1.7
CATEGORIES=	net

HOMEPAGE=	http://ekg.chmurka.net/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPLv2 - LGPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	ncurses ssl crypto z c pthread

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ARGS=	--disable-shared \
		--with-pthread \
		--without-libjpeg \
		--without-libgsm \
		--without-libungif

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
