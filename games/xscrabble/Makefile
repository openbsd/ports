# $OpenBSD: Makefile,v 1.15 2003/04/15 12:42:31 wilfried Exp $

COMMENT=	"X11 version of the popular board game"

DISTNAME=	xscrabble
PKGNAME=	xscrabble-1.0
CATEGORIES=	games

MASTER_SITES=	http://people.freebsd.org/~mph/distfiles/

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=imake noman

post-patch:
	@/usr/bin/perl -pi.bak -e "s|\@XSCRABBLEDIR\@|${PREFIX}/lib/X11/xscrabble|;" \
		${WRKSRC}/Imakefile ${WRKSRC}/XScrabble.ad ${WRKSRC}/src/main.c

NO_REGRESS=	Yes

.include <bsd.port.mk>
