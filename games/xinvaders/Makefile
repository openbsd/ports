# $OpenBSD: Makefile,v 1.31 2015/08/27 15:00:32 naddy Exp $

COMMENT=	shoot them nasty little bugs

DISTNAME=	xinvaders-2.1.1
CATEGORIES=	games

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	X11 Xaw Xmu Xt c

MASTER_SITES=	${MASTER_SITE_SUNSITE:=games/arcade/invaders/}

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-scorefile=/var/games/xinvaders.scores
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv"

FAKE_FLAGS=	SCOREFILE=${PREFIX}/share/examples/xinvaders/xinvaders.scores

.include <bsd.port.mk>
