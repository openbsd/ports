# $OpenBSD: Makefile,v 1.35 2019/07/14 00:39:37 naddy Exp $

COMMENT=	shoot them nasty little bugs

DISTNAME=	xinvaders-2.1.1
REVISION=	2
CATEGORIES=	games

PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xaw Xmu Xt c iconv intl

MASTER_SITES=	${MASTER_SITE_SUNSITE:=games/arcade/invaders/}

LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-scorefile=/var/games/xinvaders.scores
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv"

FAKE_FLAGS=	SCOREFILE=${PREFIX}/share/examples/xinvaders/xinvaders.scores

.include <bsd.port.mk>
