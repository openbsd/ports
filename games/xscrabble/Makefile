# $OpenBSD: Makefile,v 1.13 2002/03/21 20:57:08 espie Exp $

COMMENT=	"X11 version of the popular board game"

DISTNAME=	xscrabble
PKGNAME=	xscrabble-1.0
CATEGORIES=	games
NEED_VERSION=	1.515
MASTER_SITES=	http://people.freebsd.org/~mph/distfiles/

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes


CONFIGURE_STYLE=imake noman

post-patch:
	@/usr/bin/perl -pi.bak -e "s|\@XSCRABBLEDIR\@|${PREFIX}/lib/X11/xscrabble|;" \
		${WRKSRC}/Imakefile
	@/usr/bin/perl -pi.bak -e "s|\@XSCRABBLEDIR\@|${PREFIX}/lib/X11/xscrabble|;" \
		${WRKSRC}/XScrabble.ad

.include <bsd.port.mk>
