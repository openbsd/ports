# $OpenBSD: Makefile,v 1.6 2018/04/24 19:17:57 naddy Exp $

COMMENT=	utility for mp3 wrapping

DISTNAME=	mp3wrap-0.5-src
PKGNAME=	${DISTNAME:S/-src//}
REVISION =	2

CATEGORIES=	audio

HOMEPAGE=	http://mp3wrap.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3wrap/}

CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/${DISTNAME:S/-src//}

.include <bsd.port.mk>
