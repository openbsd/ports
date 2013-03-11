# $OpenBSD: Makefile,v 1.15 2013/03/11 11:23:57 espie Exp $

COMMENT=		tiling window management for the console

DISTNAME=		dvtm-0.6
REVISION=		1
CATEGORIES=		misc

HOMEPAGE=		http://www.brain-dump.org/projects/dvtm/
MAINTAINER=		Emilien Gaspar <gapz@dud-t.org>

# MIT/X
# LGPL: madtty.c
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB= 		c ncurses util

MASTER_SITES=		${HOMEPAGE}

FAKE_FLAGS=		DESTDIR=""

NO_TEST=     	Yes

.include <bsd.port.mk>
