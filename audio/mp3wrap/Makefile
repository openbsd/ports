# $OpenBSD: Makefile,v 1.7 2019/07/12 20:43:36 sthen Exp $

COMMENT=	utility for mp3 wrapping

DISTNAME=	mp3wrap-0.5-src
PKGNAME=	${DISTNAME:S/-src//}
REVISION =	2

CATEGORIES=	audio

HOMEPAGE=	http://mp3wrap.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3wrap/}

CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/${DISTNAME:S/-src//}

.include <bsd.port.mk>
