# $OpenBSD: Makefile,v 1.4 2002/05/10 11:16:03 naddy Exp $

COMMENT=	"typing break alarm and timer"

DISTNAME=	xwrits-2.21
CATEGORIES=	x11
NEED_VERSION=	1.525
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

NO_REGRESS= Yes

.include <bsd.port.mk>


