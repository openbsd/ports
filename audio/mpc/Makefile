# $OpenBSD: Makefile,v 1.8 2010/10/18 22:43:10 sthen Exp $

COMMENT=		command line client for mpd

DISTNAME=		mpc-0.19
CATEGORIES=		audio

HOMEPAGE=		http://mpd.wikia.com/wiki/Client:Mpc

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c mpdclient
LIB_DEPENDS=		::audio/libmpdclient

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

MODULES=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		ac_cv_func_iconv=yes
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib -liconv"
USE_GROFF =	Yes

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
