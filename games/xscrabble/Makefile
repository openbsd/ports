# $OpenBSD: Makefile,v 1.8 2000/03/31 19:07:48 brad Exp $

DISTNAME=	xscrabble
PKGNAME=	xscrabble-1.0
CATEGORIES=	games
MASTER_SITES=	http://people.freebsd.org/~mph/distfiles/

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

USE_IMAKE=	Yes
NO_INSTALL_MANPAGES= Yes

post-patch:
	@/usr/bin/perl -pi.bak -e "s|\@XSCRABBLEDIR\@|${PREFIX}/lib/X11/xscrabble|;" \
		${WRKSRC}/Imakefile
	@/usr/bin/perl -pi.bak -e "s|\@XSCRABBLEDIR\@|${PREFIX}/lib/X11/xscrabble|;" \
		${WRKSRC}/XScrabble.ad

.include <bsd.port.mk>
