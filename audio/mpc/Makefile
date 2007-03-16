# $OpenBSD: Makefile,v 1.2 2007/03/16 18:25:05 jasper Exp $

COMMENT=		"command line client for mpd"

DISTNAME=		mpc-0.12.0
CATEGORIES=		audio

HOMEPAGE=		http://www.musicpd.org/mpc.shtml

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		http://www.musicpd.org/uploads/files/

MODULES=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-iconv=${LOCALBASE}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpc
	${INSTALL_DATA} ${WRKSRC}/doc/m3u-handler.sh \
		${WRKSRC}/doc/pls-handler.sh ${WRKSRC}/doc/mpc-bashrc \
		${PREFIX}/share/examples/mpc

.include <bsd.port.mk>
