# $OpenBSD: Makefile,v 1.7 2004/12/17 15:18:32 alek Exp $

COMMENT=	"pager for the Blackbox window manager."

DISTNAME=	bbpager-0.3.1
CATEGORIES=	x11
MASTER_SITES=	http://bbtools.thelinuxcommunity.org/sources/ \
		http://openbsd.rutgers.edu/

HOMEPAGE=	http://bbtools.thelinuxcommunity.org/available.phtml#bbpager

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
