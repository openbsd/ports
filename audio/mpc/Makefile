# $OpenBSD: Makefile,v 1.1.1.1 2006/05/23 14:26:41 bernd Exp $

COMMENT=		"command line client for mpd"

DISTNAME=		mpc-0.11.2
CATEGORIES=		audio

HOMEPAGE=		http://www.musicpd.org/mpc.shtml

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		http://mercury.chem.pitt.edu/~shank/

MODULES=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-iconv=${LOCALBASE}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpc
	${INSTALL_DATA} ${WRKSRC}/doc/m3u-handler.sh \
		${WRKSRC}/doc/pls-handler.sh ${WRKSRC}/doc/mpc-bashrc \
		${PREFIX}/share/examples/mpc

.include <bsd.port.mk>
