# OpenBSD makefile for:	base64
# Date created:		September 24 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/09/24 23:29:23 angelos Exp $
#

DISTNAME=	base64
CATEGORIES=	converters
MASTER_SITES=	http://www.fourmilab.ch/webtools/base64/

MAINTAINER=	angelos@openbsd.org

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/base64 ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/base64.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
