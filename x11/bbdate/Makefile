# $OpenBSD: Makefile,v 1.6 2002/10/17 11:19:50 naddy Exp $

COMMENT=	"displays the date and resembles the toolbar"

DISTNAME=	bbdate-0.2.3
CATEGORIES=	x11
MASTER_SITES=	http://bbtools.thelinuxcommunity.org/sources/ \
		http://openbsd.rutgers.edu/
HOMEPAGE=	http://bbtools.thelinuxcommunity.org/available.phtml#bbdate

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

RUN_DEPENDS=	::x11/blackbox

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
