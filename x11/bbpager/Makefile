# $OpenBSD: Makefile,v 1.3 2001/07/09 17:10:56 pvalchev Exp $

COMMENT=	"pager for the Blackbox window manager."

DISTNAME=	bbpager-0.3.0
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	http://bbtools.thelinuxcommunity.org/sources/ \
		http://openbsd.rutgers.edu/
HOMEPAGE=	http://bbtools.thelinuxcommunity.org/available.phtml#bbpager

MAINTAINER=	Dorqus Maximus <dorqus@bsdfreek.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

RUN_DEPENDS=	blackbox::x11/blackbox

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
