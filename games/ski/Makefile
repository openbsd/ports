# $OpenBSD: Makefile,v 1.9 2011/09/16 09:48:10 espie Exp $

COMMENT=	skiing simulation game

DISTNAME=	ski-6.7
REVISION =	1
CATEGORIES=	games

HOMEPAGE=	http://catb.org/~esr/ski/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

USE_GROFF =	Yes
NO_REGRESS=	Yes

do-build:
	perl -pi -e "s,^#!/usr/bin/env python,#!${MODPY_BIN}," ${WRKSRC}/ski

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ski ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ski.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
