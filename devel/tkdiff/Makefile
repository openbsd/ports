# $OpenBSD: Makefile,v 1.17 2019/07/17 14:49:21 danj Exp $

COMMENT=	graphical front-end to the diff program

DISTNAME=	tkdiff-4.2
REVISION =	2
CATEGORIES=	devel sysutils

HOMEPAGE=	http://tkdiff.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tkdiff/}

MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/tkdiff-unix

do-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkdiff

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkdiff ${PREFIX}/bin

.include <bsd.port.mk>
