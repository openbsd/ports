# $OpenBSD: Makefile,v 1.43 2019/01/12 07:56:51 ajacoutot Exp $

COMMENT=		curses based frontend for mpd

VER=			0.33
DISTNAME=		ncmpc-${VER}
EPOCH=			0
CATEGORIES=		audio
REVISION=		1

HOMEPAGE=		https://www.musicpd.org/clients/ncmpc/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

# make sure to regen WANTLIB on ld.lld arches (-Wl,--as-needed)
WANTLIB=		c intl m mpdclient>=1 ${COMPILER_LIBCXX} curses pcre

MASTER_SITES=		https://www.musicpd.org/download/ncmpc/${VER:R}/

EXTRACT_SUFX=		.tar.xz

COMPILER =		base-clang ports-gcc

MODULES=		devel/meson

BUILD_DEPENDS=		devel/boost \
			devel/gettext-tools \
			textproc/py-sphinx

LIB_DEPENDS=		devel/gettext \
			devel/pcre \
			audio/libmpdclient>=2.4

CONFIGURE_ARGS=		-Dlirc=disabled \
			-Dhtml_manual=false \
			-Dlocale=enabled \
			-Dmouse=enabled

# disable meson's default of using "-Wl,--as-needed" on ld.bfd arches;
# build failures due to undefined references are often seen.
.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	-Db_asneeded=false
.endif

CONFIGURE_ENV=		CPP=${CPP} \
			CPPFLAGS="-D_GNU_SOURCE \
				  -D_DEFAULT_SOURCE \
				  -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lintl"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ncmpc
	mv ${PREFIX}/share/doc/ncmpc/{config.sample,keys.sample,ncmpc.lirc} \
		${PREFIX}/share/examples/ncmpc/

.include <bsd.port.mk>
