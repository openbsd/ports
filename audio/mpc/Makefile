# $OpenBSD: Makefile,v 1.5 2009/04/02 05:18:15 jasper Exp $

COMMENT=		command line client for mpd

DISTNAME=		mpc-0.12.1
PKGNAME=		${DISTNAME}p0
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
	${INSTALL_SCRIPT} ${WRKSRC}/doc/m3u-handler.sh \
		${WRKSRC}/doc/pls-handler.sh ${PREFIX}/share/examples/mpc
	${INSTALL_DATA} ${WRKSRC}/doc/mpc-bashrc ${PREFIX}/share/examples/mpc

.include <bsd.port.mk>
