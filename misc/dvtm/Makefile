# $OpenBSD: Makefile,v 1.8 2009/10/11 21:59:02 sthen Exp $

COMMENT=		tiling window management for the console

DISTNAME=		dvtm-0.5.2
CATEGORIES=		misc

HOMEPAGE=		http://www.brain-dump.org/projects/dvtm/
MAINTAINER=		Emilien Gaspar <gapz@dud-t.org>

# MIT/X
# LGPL: madtty.c
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= 		c ncurses util

MASTER_SITES=		${HOMEPAGE}

FAKE_FLAGS=		DESTDIR=""

NO_REGRESS=     	Yes

.include <bsd.port.mk>
