# $OpenBSD: Makefile,v 1.1.1.1 2006/06/28 18:21:44 alek Exp $

COMMENT=	"Gadu-Gadu IM protocol client"

DISTNAME=	ekg-1.6
CATEGORIES=	net

HOMEPAGE=	http://ekg.chmurka.net/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		ncurses ssl crypto z c pthread

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ARGS=	--with-pthread \
		--without-libjpeg \
		--without-libgsm

NO_REGRESS=	Yes

.include <bsd.port.mk>
