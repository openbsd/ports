# $OpenBSD: Makefile,v 1.4 1998/11/09 01:50:01 marc Exp $
#

DISTNAME=	xscrabble
PKGNAME=	xscrabble-1.0
CATEGORIES=	games

NO_CDROM=	"NOFEE:	Can not sell"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://www.belgarath.demon.co.uk/programs/

USE_IMAKE=		yes
NO_INSTALL_MANPAGES=	yes

post-patch:
	@/usr/bin/perl -pi.bak -e "s|\@XSCRABBLEDIR\@|${PREFIX}/lib/X11/xscrabble|;" \
		${WRKSRC}/Imakefile
	@/usr/bin/perl -pi.bak -e "s|\@XSCRABBLEDIR\@|${PREFIX}/lib/X11/xscrabble|;" \
		${WRKSRC}/XScrabble.ad

.include <bsd.port.mk>
