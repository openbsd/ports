# $OpenBSD: Makefile,v 1.11 2007/07/22 07:30:26 ajacoutot Exp $

COMMENT=	displays the date and resembles the toolbar

DISTNAME=	bbdate-0.2.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11
MASTER_SITES=	http://openbsd.rutgers.edu/ \
		${MASTER_SITE_SOURCEFORGE:=bbtools/}
HOMEPAGE=	http://bbtools.sourceforge.net/download.php?file=3

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
