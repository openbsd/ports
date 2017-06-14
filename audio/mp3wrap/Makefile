# $OpenBSD: Makefile,v 1.5 2017/06/14 20:43:53 schwarze Exp $

COMMENT=	utility for mp3 wrapping

DISTNAME=	mp3wrap-0.5-src
PKGNAME=	${DISTNAME:S/-src//}
REVISION =	1

CATEGORIES=	audio

HOMEPAGE=	http://mp3wrap.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3wrap/}

CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/${DISTNAME:S/-src//}

.include <bsd.port.mk>
