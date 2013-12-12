# $OpenBSD: Makefile,v 1.17 2013/12/12 21:39:08 jca Exp $

COMMENT=	The Dungeons of Moria

V=		5.5.2
DISTNAME=	um$V
PKGNAME=	moria-$V
REVISION=	3

CATEGORIES=	games

HOMEPAGE=	http://www-math.bgsu.edu/~grabine/moria.html

PERMIT_PACKAGE_CDROM=	not-for-profit redistribution only
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c curses termcap

MASTER_SITES=	ftp://ftp.funet.fi/pub/unix/games/moria/source/ \
		ftp://alge.anart.no/pub/games/RPG/moria/
EXTRACT_SUFX=	.tar.Z

MAKE_FLAGS=	CC="${CC}" CFLAGS='-DPREFIX=\"${PREFIX}\" ${CFLAGS}'

SEPARATE_BUILD= Yes

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/umoria

ALL_TARGET=	moria

libfiles=	hours news origcmds.hlp owizcmds.hlp roglcmds.hlp \
		rwizcmds.hlp version.hlp welcome.hlp

post-configure:
	cd ${WRKBUILD}; for i in ${WRKSRC}/source/*; do ln -sf $$i; done; \
	 for i in ${WRKSRC}/unix/*; do ln -sf $$i; done; \
	 ln -sf ${WRKSRC}/files

do-install:
	${INSTALL_PROGRAM} -g games -m 2711 ${WRKBUILD}/moria ${PREFIX}/bin
	${INSTALL_DATA_DIR} -m 711 ${PREFIX}/share/moria
	cd ${WRKBUILD}/files; ${INSTALL_DATA} ${libfiles} ${PREFIX}/share/moria
	${INSTALL_DATA} /dev/null ${PREFIX}/share/moria/scores

.include <bsd.port.mk>
