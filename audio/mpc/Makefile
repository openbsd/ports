# $OpenBSD: Makefile,v 1.13 2013/03/10 22:55:04 espie Exp $

COMMENT=		command line client for mpd

DISTNAME=		mpc-0.22
CATEGORIES=		audio

HOMEPAGE=		http://mpd.wikia.com/wiki/Client:Mpc

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c mpdclient
LIB_DEPENDS=		audio/libmpdclient>=2.2

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

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
