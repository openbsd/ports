# $OpenBSD: Makefile,v 1.23 2016/09/13 11:44:07 naddy Exp $

COMMENT=		command line client for mpd

VER=			0.28
DISTNAME=		mpc-${VER}
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
