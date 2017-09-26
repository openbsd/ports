# $OpenBSD: Makefile,v 1.35 2017/09/26 10:18:41 dcoppa Exp $

COMMENT=		curses based frontend for mpd

VER=			0.28
DISTNAME=		ncmpc-${VER}
EPOCH=			0
CATEGORIES=		audio

HOMEPAGE=		http://www.musicpd.org/clients/ncmpc/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c glib-2.0 intl mpdclient>=1 ncursesw

MASTER_SITES=		http://www.musicpd.org/download/ncmpc/${VER:R}/

EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext-tools

LIB_DEPENDS=		devel/gettext \
			devel/glib2 \
			audio/libmpdclient>=2.4

CONFIGURE_ARGS=		-Dcolors=ncursesw \
			-Dcurses=ncursesw \
			-Dlirc=false \
			-Dlocale=true \
			-Dmouse=true
CONFIGURE_ENV=		CPP=${CPP} \
			CPPFLAGS="-D_GNU_SOURCE \
				  -D_DEFAULT_SOURCE \
				  -I${LOCALBASE}/include" \
			LDFLAGS="-lncursesw -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ncmpc
	mv ${PREFIX}/share/doc/ncmpc/{config.sample,keys.sample,ncmpc.lirc} \
		${PREFIX}/share/examples/ncmpc/

.include <bsd.port.mk>
