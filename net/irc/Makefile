# OpenBSD makefile for:	Irc Server
# Version required:	2.8.21
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.4 1998/07/18 19:18:55 marc Exp $
#

DISTNAME=	irc2.9.5
CATEGORIES=	net

MAINTAINER=	marc@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.funet.fi/pub/networking/services/irc/server/
EXTRACT_SUFX=	.tgz

GNU_CONFIGURE=	yes

do-build:
	@(cd ${WRKSRC}/`${WRKSRC}/support/config.guess` && \
	 ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${ALL_TARGET})

do-install:
	@(cd ${WRKSRC}/`${WRKSRC}/support/config.guess` && \
	 ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${INSTALL_TARGET})

.include <bsd.port.mk>
