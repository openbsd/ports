# Makefile for:         tvtwm
# Version required:     pl11
# Date created:         5th December 1994
# Whom:                 gpalmer
#
# $FreeBSD: ports/x11-wm/tvtwm/Makefile,v 1.17 1999/08/31 06:53:15 mharo Exp $
# $OpenBSD: Makefile,v 1.9 2000/10/22 15:43:52 espie Exp $

DISTNAME=	tvtwm.pl11
PKGNAME=	tvtwm-pl11

CATEGORIES=	x11
NEED_VERSION=	1.305

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	window_managers

WRKDIST=	${WRKDIR}/tvtwm

CONFIGURE_STYLE=	imake

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tvtwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tvtwm.man ${PREFIX}/man/man1/tvtwm.1

.include <bsd.port.mk>
