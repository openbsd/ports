# $OpenBSD: Makefile,v 1.14 2013/09/19 16:33:17 dcoppa Exp $

COMMENT=		command line client for mpd

MAJV=			0
MINV=			23
DISTNAME=		mpc-${MAJV}.${MINV}
CATEGORIES=		audio

HOMEPAGE=		http://www.musicpd.org/clients/mpc/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c mpdclient
LIB_DEPENDS=		audio/libmpdclient>=2.2

MASTER_SITES=		http://www.musicpd.org/download/mpc/${MAJV}/

MODULES=		converters/libiconv

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
