# $OpenBSD: Makefile,v 1.13 2003/10/08 17:13:16 sturm Exp $

COMMENT=	"light, keyboard friendly window manager"

DISTNAME=	ion-20020207
HOMEPAGE=	http://modeemi.cs.tut.fi/~tuomov/ion/
CATEGORIES=	x11

MASTER_SITES=	http://modeemi.cs.tut.fi/~tuomov/dl/ \
		ftp://rt.fm/pub/ion/

# custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
USE_X11=	Yes
MAKE_FLAGS=	SYSCONFDIR=${SYSCONFDIR}

NO_REGRESS=	Yes

.include <bsd.port.mk>
