# $OpenBSD: Makefile,v 1.10 2000/10/22 15:42:13 espie Exp $

DISTNAME=	xscrabble
PKGNAME=	xscrabble-1.0
CATEGORIES=	games
NEED_VERSION=	1.305
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
