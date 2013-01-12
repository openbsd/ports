# $OpenBSD: Makefile,v 1.12 2013/01/12 14:11:27 shadchin Exp $

COMMENT=	graphical front-end to the diff program

DISTNAME=	tkdiff-4.2
CATEGORIES=	devel sysutils

HOMEPAGE=	http://tkdiff.sourceforge.net/

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tkdiff/}

MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/tkdiff-unix

do-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkdiff

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkdiff ${PREFIX}/bin

.include <bsd.port.mk>
