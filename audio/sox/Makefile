# OpenBSD makefile for:	sox - Sound Exchange
# Version required:	12p12
# Date created:		May 3 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/17 01:05:56 angelos Exp $
#

DISTNAME=	soxgamma
PKGNAME=	sox-12.12
CATEGORIES=	audio
MASTER_SITES=	http://www.spies.com/Sox/Archive/

MAINTAINER=	angelos@openbsd.org

NO_WRKSUBDIR=		yes
MAKEFILE=	Makefile.unx
MAN1=		sox.1

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/sox ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/sox.man ${PREFIX}/man/man1/sox.1

.include <bsd.port.mk>
