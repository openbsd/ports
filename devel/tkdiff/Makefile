# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:31 espie Exp $

COMMENT=	graphical front-end to the diff program

DISTNAME=	tkdiff-4.2
CATEGORIES=	devel sysutils

HOMEPAGE=	http://tkdiff.sourceforge.net/

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

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
