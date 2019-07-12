# $OpenBSD: Makefile,v 1.16 2019/07/12 20:46:02 sthen Exp $

COMMENT=	graphical front-end to the diff program

DISTNAME=	tkdiff-4.2
REVISION =	1
CATEGORIES=	devel sysutils

HOMEPAGE=	http://tkdiff.sourceforge.net/

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

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
