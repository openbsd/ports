# $OpenBSD: Makefile,v 1.4 2015/01/21 06:13:46 bentley Exp $

COMMENT=	utility for mp3 wrapping

DISTNAME=	mp3wrap-0.5-src
PKGNAME=	${DISTNAME:S/-src//}
REVISION =	0

CATEGORIES=	audio

HOMEPAGE=	http://mp3wrap.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3wrap/}

CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/${DISTNAME:S/-src//}
USE_GROFF =	Yes

.include <bsd.port.mk>
