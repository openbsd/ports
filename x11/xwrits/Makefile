# $OpenBSD: Makefile,v 1.5 2002/12/29 20:31:42 fgsch Exp $

COMMENT=	"typing break alarm and timer"

DISTNAME=	xwrits-2.21
CATEGORIES=	x11
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


