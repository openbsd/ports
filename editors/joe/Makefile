# $OpenBSD: Makefile,v 1.7 1998/10/15 05:10:54 form Exp $
#

DISTNAME=	joe2.8
PKGNAME=	joe-2.8
CATEGORIES=	editors

MAINTAINER=	form@vs.itam.nsc.ru

MASTER_SITES=	ftp://ftp.std.com/src/editors/
EXTRACT_SUFX=	.tar.Z

WRKSRC=		${WRKDIR}/joe
ALL_TARGET=	joe
MAN1=		joe.1

# Comment this line if you wish to use termcap library
MAKE_ENV+=	"USE_TERMINFO=yes"

.include <bsd.port.mk>
