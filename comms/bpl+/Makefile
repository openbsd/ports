# OpenBSD makefile for:	bpl+
# Version required:		1.0
# Date created:			31 Dec 1997
# Whom:				ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/31 18:36:18 joey Exp $
#

DISTNAME=	bpl+
PKGNAME=	bpl+-1.0
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.tohoku.ac.jp/pub/net/telnet/telnetx/

MAINTAINER=	joey@OpenBSD.ORG

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bpl ${PREFIX}/bin
	@ln -fs ${PREFIX}/bin/bpl ${PREFIX}/bin/bp

.include <bsd.port.mk>
