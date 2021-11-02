# $OpenBSD: Makefile,v 1.18 2021/11/02 00:01:14 sthen Exp $

COMMENT=		skiing simulation game

DISTNAME=		ski-6.13
REVISION=		0

CATEGORIES=		games

HOMEPAGE=		http://catb.org/~esr/ski/
MASTER_SITES=		http://catb.org/~esr/ski/

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_ADJ_FILES=	ski

NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ski ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ski.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
