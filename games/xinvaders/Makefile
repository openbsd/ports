# $OpenBSD: Makefile,v 1.33 2016/04/12 15:19:40 naddy Exp $

COMMENT=	shoot them nasty little bugs

DISTNAME=	xinvaders-2.1.1
REVISION=	1
CATEGORIES=	games

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	X11 Xaw Xmu Xt c iconv intl

MASTER_SITES=	${MASTER_SITE_SUNSITE:=games/arcade/invaders/}

LIB_DEPENDS=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-scorefile=/var/games/xinvaders.scores
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv"

FAKE_FLAGS=	SCOREFILE=${PREFIX}/share/examples/xinvaders/xinvaders.scores

.include <bsd.port.mk>
