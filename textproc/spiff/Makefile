# $OpenBSD: Makefile,v 1.1.1.1 1998/09/23 23:34:01 ian Exp $
#

PKGNAME=	spiff-1.0
DISTNAME=	spiff-1.0
CATEGORIES=	textproc
MASTER_SITES=	http://www.darwinsys.com/freeware/

NO_CDROM = "COPYRIGHT says \"...may not be sold for profit...\""

MAINTAINER=	ian@openbsd.org

MAN1=spiff.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/spiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/spiff.0 ${PREFIX}/man/man1

.include <bsd.port.mk>
