# $OpenBSD: Makefile,v 1.15 2004/01/22 16:57:18 jcs Exp $

COMMENT=	"open source client for Windows Terminal Server"
DISTNAME=	rdesktop-1.3.1
CATEGORIES=	x11 net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rdesktop/}

HOMEPAGE=	http://www.rdesktop.org/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-x=${X11BASE}

ALL_TARGET=	rdesktop

.include <bsd.port.mk>
