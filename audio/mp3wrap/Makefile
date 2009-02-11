# $OpenBSD: Makefile,v 1.1.1.1 2009/02/11 15:36:33 kevlo Exp $

COMMENT=	utility for mp3 wrapping

DISTNAME=	mp3wrap-0.5-src
PKGNAME=	${DISTNAME:S/-src//}

CATEGORIES=	audio

HOMEPAGE=	http://mp3wrap.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@cvs.openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3wrap/}

CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/${DISTNAME:S/-src//}

.include <bsd.port.mk>
