# $OpenBSD: Makefile,v 1.11 2001/05/06 01:06:33 lebel Exp $

COMMENT=	"X11 version of the popular board game"

DISTNAME=	xscrabble
PKGNAME=	xscrabble-1.0
CATEGORIES=	games
NEED_VERSION=	1.402
MASTER_SITES=	http://people.freebsd.org/~mph/distfiles/

MAINTAINER=	ports@openbsd.org

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
