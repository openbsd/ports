# $OpenBSD: Makefile,v 1.28 2014/09/02 08:44:15 dcoppa Exp $

COMMENT=		curses based frontend for mpd

VER=			0.24
DISTNAME=		ncmpc-${VER}
EPOCH=			0
CATEGORIES=		audio

HOMEPAGE=		http://www.musicpd.org/clients/ncmpc/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c glib-2.0 mpdclient>=1 ncursesw pthread
LIB_DEPENDS=		devel/glib2 \
			audio/libmpdclient>=2.4
MODULES=		devel/gettext

MASTER_SITES=		http://www.musicpd.org/download/ncmpc/${VER:R}/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPP=${CPP} \
			CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ncmpc
	mv ${PREFIX}/share/doc/ncmpc/{config.sample,keys.sample,ncmpc.lirc} \
		${PREFIX}/share/examples/ncmpc/

.include <bsd.port.mk>
