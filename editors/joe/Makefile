# $OpenBSD: Makefile,v 1.8 1998/10/20 08:39:45 form Exp $
#

DISTNAME=	joe2.8
PKGNAME=	joe-2.8
CATEGORIES=	editors

MAINTAINER=	form@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.std.com/src/editors/
EXTRACT_SUFX=	.tar.Z

WRKSRC=		${WRKDIR}/joe
ALL_TARGET=	joe
MAN1=		joe.1

# Comment this line if you wish to use termcap library
MAKE_ENV+=	"USE_TERMINFO=yes"

.include <bsd.port.mk>
