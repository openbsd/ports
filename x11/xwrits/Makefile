# $OpenBSD: Makefile,v 1.7 2004/12/17 15:03:19 alek Exp $

COMMENT=	"typing break alarm and timer"

DISTNAME=	xwrits-2.21
CATEGORIES=	x11
HOMEPAGE=	http://www.lcdf.org/~eddietwo/xwrits/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ICE SM X11 Xext Xinerama c m 

MASTER_SITES=	${HOMEPAGE}

USE_X11=	Yes
SEPARATE_BUILD= concurrent
CONFIGURE_STYLE= gnu

NO_REGRESS= Yes

.include <bsd.port.mk>


