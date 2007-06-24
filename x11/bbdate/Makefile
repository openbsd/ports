# $OpenBSD: Makefile,v 1.10 2007/06/24 21:53:27 martynas Exp $

COMMENT=	"displays the date and resembles the toolbar"

DISTNAME=	bbdate-0.2.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
MASTER_SITES=	http://openbsd.rutgers.edu/
HOMEPAGE=	http://bbtools.thelinuxcommunity.org/available.phtml\#bbdate

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c m stdc++

USE_X11=	Yes

RUN_DEPENDS=	::x11/blackbox

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
