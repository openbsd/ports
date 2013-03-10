# $OpenBSD: Makefile,v 1.3 2013/03/10 22:55:04 espie Exp $

COMMENT=	utility for mp3 wrapping

DISTNAME=	mp3wrap-0.5-src
PKGNAME=	${DISTNAME:S/-src//}

CATEGORIES=	audio

HOMEPAGE=	http://mp3wrap.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@cvs.openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3wrap/}

CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/${DISTNAME:S/-src//}
USE_GROFF =	Yes

.include <bsd.port.mk>
