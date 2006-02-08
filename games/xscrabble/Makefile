# $OpenBSD: Makefile,v 1.18 2006/02/08 04:54:49 david Exp $

COMMENT=	"X11 version of the popular board game"

DISTNAME=	xscrabble
PKGNAME=	xscrabble-1.0
CATEGORIES=	games

MASTER_SITES=	http://people.freebsd.org/~mph/distfiles/

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c

CONFIGURE_STYLE=imake noman

NO_REGRESS=	Yes

pre-configure:
	@/usr/bin/perl -pi.bak -e "s|\@XSCRABBLEDIR\@|${PREFIX}/lib/X11/xscrabble|;" \
		${WRKSRC}/Imakefile ${WRKSRC}/XScrabble.ad ${WRKSRC}/src/main.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xscrabble
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/xscrabble/xscrabble.scores

.include <bsd.port.mk>
