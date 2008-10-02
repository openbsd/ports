# $OpenBSD: Makefile,v 1.2 2008/10/02 18:35:13 jasper Exp $

COMMENT=		module to submit songs to last.fm from MPD
DISTNAME=		Music-Audioscrobbler-MPD-0.13
CATEGORIES=		audio

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		EALLENIII

RUN_DEPENDS=		::audio/p5-Music-Audioscrobbler-Submit \
			::devel/p5-Proc-Daemon

EG_DIR= 		${PREFIX}/share/examples/p5-Music-Audioscrobbler-MPD

post-install:
	${INSTALL_DATA_DIR} ${EG_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/musicmpdscrobble_example.conf \
		${EG_DIR}/musicmpdscrobble.conf

.include <bsd.port.mk>
