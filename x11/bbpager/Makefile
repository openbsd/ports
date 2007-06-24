# $OpenBSD: Makefile,v 1.10 2007/06/24 21:53:27 martynas Exp $

COMMENT=	"pager for the Blackbox window manager"

DISTNAME=	bbpager-0.3.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
MASTER_SITES=	http://bbtools.windsofstorm.net/sources/

HOMEPAGE=	http://bbtools.windsofstorm.net/available.phtml\#bbpager

MAINTAINER=	Josh Rivel <dorqus@freek.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c m stdc++

USE_X11=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
