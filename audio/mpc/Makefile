# $OpenBSD: Makefile,v 1.24 2017/03/23 18:45:45 dcoppa Exp $

COMMENT=		command line client for mpd

VER=			0.28
DISTNAME=		mpc-${VER}
REVISION=		0
CATEGORIES=		audio

HOMEPAGE=		http://www.musicpd.org/clients/mpc/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c iconv mpdclient
LIB_DEPENDS=		audio/libmpdclient>=2.2 \
			converters/libiconv

MASTER_SITES=		http://www.musicpd.org/download/mpc/${VER:R}/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		ac_cv_func_iconv=yes
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib -liconv"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpc
	${INSTALL_SCRIPT} \
		${WRKSRC}/doc/mpd-m3u-handler.sh \
		${WRKSRC}/doc/mpd-pls-handler.sh \
		${WRKSRC}/doc/mppledit \
		${PREFIX}/share/examples/mpc
	${INSTALL_DATA} ${WRKSRC}/doc/mpc-completion.bash \
		${PREFIX}/share/examples/mpc

.include <bsd.port.mk>
