# $OpenBSD: Makefile,v 1.2 1998/10/07 00:17:39 marc Exp $
#

DISTNAME=	soxgamma
PKGNAME=	sox-12.12
CATEGORIES=	audio

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://www.spies.com/Sox/Archive/

NO_WRKSUBDIR=	yes
MAKEFILE=	Makefile.unx
MAN1=		sox.1

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/sox ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/sox.man ${PREFIX}/man/man1/sox.1

.include <bsd.port.mk>
