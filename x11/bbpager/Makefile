# $OpenBSD: Makefile,v 1.4 2001/11/13 22:13:25 espie Exp $

COMMENT=	"pager for the Blackbox window manager."

DISTNAME=	bbpager-0.3.0
CATEGORIES=	x11
NEED_VERSION=	1.496
MASTER_SITES=	http://bbtools.thelinuxcommunity.org/sources/ \
		http://openbsd.rutgers.edu/
HOMEPAGE=	http://bbtools.thelinuxcommunity.org/available.phtml#bbpager

MAINTAINER=	Dorqus Maximus <dorqus@bsdfreek.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

RUN_DEPENDS=	::x11/blackbox

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
