# $OpenBSD: Makefile,v 1.4 2009/03/15 14:39:03 espie Exp $

COMMENT=	skiing simulation game

DISTNAME=	ski-6.5
PKGNAME=	${DISTNAME}p1
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

NO_REGRESS=	Yes

do-build:
	perl -pi -e "s,^#!/usr/bin/env python,#!${MODPY_BIN}," ${WRKSRC}/ski

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ski ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ski.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
