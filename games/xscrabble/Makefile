# OpenBSD makefile for:	xscrabble
# Version required:	1.0
# Date created:		December 1, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1998/06/13 23:26:51 marc Exp $
#

DISTNAME=	xscrabble
PKGNAME=	xscrabble-1.0
CATEGORIES=	games
NO_CDROM=	"NOFEE:	Can not sell"

MASTER_SITES=	http://www.belgarath.demon.co.uk/programs/

MAINTAINER=	angelos@openbsd.org

OS_RELEASE!=		uname -r
OS_HAS_XPM=		2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=		Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_IMAKE=		yes
NO_INSTALL_MANPAGES=	yes

post-patch:
	@/usr/bin/perl -pi.bak -e "s|\@XSCRABBLEDIR\@|${PREFIX}/lib/X11/xscrabble|;" \
		${WRKSRC}/Imakefile
	@/usr/bin/perl -pi.bak -e "s|\@XSCRABBLEDIR\@|${PREFIX}/lib/X11/xscrabble|;" \
		${WRKSRC}/XScrabble.ad

.include <bsd.port.mk>
