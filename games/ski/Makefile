# $OpenBSD: Makefile,v 1.11 2013/03/11 11:07:40 espie Exp $

COMMENT=	skiing simulation game

DISTNAME=	ski-6.7
REVISION=	2
CATEGORIES=	games

HOMEPAGE=	http://catb.org/~esr/ski/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

USE_GROFF =	Yes
NO_TEST=	Yes

do-build:
	perl -pi -e "s,^#!/usr/bin/env python,#!${MODPY_BIN}," ${WRKSRC}/ski

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ski ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ski.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
