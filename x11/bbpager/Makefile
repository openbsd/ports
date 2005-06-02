# $OpenBSD: Makefile,v 1.8 2005/06/02 19:41:25 pvalchev Exp $

COMMENT=	"pager for the Blackbox window manager."

DISTNAME=	bbpager-0.3.1
CATEGORIES=	x11
MASTER_SITES=	http://bbtools.windsofstorm.net/sources/

HOMEPAGE=	http://bbtools.windsofstorm.net/available.phtml#bbpager

MAINTAINER=	Josh Rivel <dorqus@bsdfreek.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c m stdc++

USE_X11=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
