# $OpenBSD: Makefile,v 1.8 2001/08/08 23:36:28 lebel Exp $
# Original from: Robert Ruehlmann

COMMENT=		"rogue-like game with X11 support"
COMMENT-no_x11=		"rogue-like game"

DISTNAME=		angband-2.9.3
CATEGORIES=     	games
NEED_VERSION=		1.433

HOMEPAGE=		http://thangorodrim.angband.org/

MAINTAINER=		Carsten Ilchmann <ci2@gmx.net>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://clockwork.dementia.org/angband/Source/ \
			ftp://ftp.sunet.se/pub/games/Angband/Source/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-setgid=games

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
CONFIGURE_ARGS+=	--with-x
.endif

.include <bsd.port.mk>
