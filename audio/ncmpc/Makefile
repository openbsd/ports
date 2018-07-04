# $OpenBSD: Makefile,v 1.38 2018/07/04 09:02:58 landry Exp $

COMMENT=		curses based frontend for mpd

VER=			0.30
DISTNAME=		ncmpc-${VER}
EPOCH=			0
CATEGORIES=		audio

HOMEPAGE=		https://www.musicpd.org/clients/ncmpc/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c glib-2.0 intl mpdclient>=1 ${COMPILER_LIBCXX} curses

MASTER_SITES=		https://www.musicpd.org/download/ncmpc/${VER:R}/

EXTRACT_SUFX=		.tar.xz

COMPILER =		base-clang ports-gcc

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext-tools \
			textproc/py-sphinx

LIB_DEPENDS=		devel/gettext \
			devel/glib2 \
			audio/libmpdclient>=2.4

CONFIGURE_ARGS=		-Dlirc=false \
			-Dlocale=true \
			-Dmouse=true
CONFIGURE_ENV=		CPP=${CPP} \
			CPPFLAGS="-D_GNU_SOURCE \
				  -D_DEFAULT_SOURCE \
				  -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ncmpc
	mv ${PREFIX}/share/doc/ncmpc/{config.sample,keys.sample,ncmpc.lirc} \
		${PREFIX}/share/examples/ncmpc/

.include <bsd.port.mk>
