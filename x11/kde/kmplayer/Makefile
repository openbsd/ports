# $OpenBSD: Makefile,v 1.1.1.1 2003/01/29 10:13:07 espie Exp $


COMMENT='front-end/embeddable kpart for mplayer'
CATEGORIES=	x11	x11/kde
DISTNAME=	kmplayer-0.6.4

MASTER_SITES=	http://www.xs4all.nl/~jjvrieze/
WRKDIST=${WRKDIR}/kmplayer
VERSION=3
MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes

LIB_DEPENDS=kdecore.4,DCOP,kdefx,kdesu,kdeui,kio,kmediaplayer,kparts::x11/kde/libs3

RUN_DEPENDS=:mplayer-*:x11/mplayer

SEPARATE_BUILD=flavored

.include <bsd.port.mk>
