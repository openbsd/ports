# $OpenBSD: Makefile,v 1.1.1.1 2001/04/04 20:29:30 naddy Exp $

COMMENT=	"typing break alarm and timer"

DISTNAME=	xwrits-2.14
CATEGORIES=	x11
NEED_VERSION=	1.363
HOMEPAGE=	http://www.lcdf.org/~eddietwo/xwrits/

MAINTAINER=	Dan Weeks <danimal@danimal.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

USE_X11=	Yes
SEPARATE_BUILD= concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
