# $OpenBSD: Makefile,v 1.3 1999/09/02 22:12:39 brad Exp $

DISTNAME=       wbd-1.0ucl4
CATEGORIES=	mbone
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/wbd/1.0ucl4/
ONLY_FOR_ARCHS=	i386

MAINTAINER=	angelos@openbsd.org

RUN_DEPENDS=    gs:${PORTSDIR}/print/ghostscript5

MAKEFILE=	makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wbd ${PREFIX}/bin

.include <bsd.port.mk>
